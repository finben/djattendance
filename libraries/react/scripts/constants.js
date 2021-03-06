import { addDays, differenceInWeeks, getDay, setHours, setMinutes, startOfWeek, endOfWeek, isSunday } from 'date-fns'

//constants

export const ATTENDANCE_STATUS = [
  {id: 'P', name: 'Present'},
  {id: 'A', name: 'Absent'},
  {id: 'T', name: 'Tardy'},
  {id: 'U', name: 'Uniform'},
  {id: 'L', name: 'Left Class'},
]

export const ATTENDANCE_STATUS_LOOKUP = {
    'P': 'present',
    'A': 'absent',
    'T': 'tardy',
    'U': 'uniform',
    'L': 'left-class'
}

export const SLIP_STATUS_LOOKUP = {
    'A': 'approved',
    'P': 'pending',
    'F': 'fellowship',
    'D': 'denied',
}

export const SLIP_STATUS_RANKINGS = {
    'A': 1,
    'F': 2,
    'P': 3,
    'D': 4
}

export const GROUP_SLIP_TYPES = [
  {id: 'CONF', name: 'Conference'},
  {id: 'FWSHP', name: 'Fellowship'},
  {id: 'GOSP', name: 'Gospel'},
  {id: 'NOTIF', name: '*Notification Only'},
  {id: 'OTHER', name: 'Other'},
  {id: 'SERV', name: 'Service'},
  {id: 'TTRIP', name: 'Team Trip'},
]

export const SLIP_TYPES = [
  {id: 'CONF', name: 'Conference'},
  {id: 'FWSHP', name: 'Fellowship'},
  {id: 'GOSP', name: 'Gospel'},
  {id: 'MEAL', name: 'Meal Out'},
  {id: 'NIGHT', name: 'Night Out'},
  {id: 'NOTIF', name: '*Notification Only'},
  {id: 'OTHER', name: 'Other'},
  {id: 'SERV', name: 'Service'},
  {id: 'SICK', name: 'Sickness'},
  {id: 'EMERG', name: 'Special: Family Emergency'},
  {id: 'FUNRL', name: 'Special: Funeral'},
  {id: 'INTVW', name: 'Special: Graduate School or Job Interview'},
  {id: 'GRAD', name: 'Special: Graduation'},
  {id: 'WED', name: 'Special: Wedding'},
]

export const TA_IS_INFORMED = {id: 'true', name: 'Yes, informed a TA'}
export const TA_EMPTY = {id: '-1', name: ''}
export const INFORMED = [
  TA_IS_INFORMED,
  {id: 'texted', name: 'Yes, texted the attendance number (only for sisters when the office is closed)'},
  {id: 'false', name: 'No'},
  TA_EMPTY,
]

export const SLIP_TYPE_LOOKUP = {
    'CONF': 'Conference',
    'EMERG': 'Family Emergency',
    'FWSHP': 'Fellowship',
    'FUNRL': 'Funeral',
    'GOSP': 'Gospel',
    'INTVW': 'Grad School/Job Interview',
    'GRAD': 'Graduation',
    'MEAL': 'Meal Out',
    'NIGHT': 'Night Out',
    'OTHER': 'Other',
    'SERV': 'Service',
    'SICK': 'Sickness',
    'SPECL': 'Special',
    'WED': 'Wedding',
    'NOTIF': 'Notification Only'
}

export const FA_ICON_LOOKUP = {
    "pending": "circle-thin",
    "denied": "minus-circle",
    "approved": "check-circle",
    "fellowship": "exclamation-circle"
}

export function joinValidClasses(classes) {
  return classes.filter((c) => c).join(' ');
};

export function categorizeEventStatus(wesr) {
  let status = {}

  let slip = wesr.slip || {}
  let gslip = wesr.gslip || {}
  let statuses = [slip.status, gslip.status]
  if (statuses.includes('A')) {
    status.slip = 'approved'
  } else if (statuses.includes('F')) {
    status.slip = 'fellowship'
  } else if (statuses.includes('P') || statuses.includes('S')) {
    status.slip = 'pending'
  } else if (statuses.includes('D')) {
    status.slip = 'denied'
  }

  if (!wesr.roll) {
    status.roll = 'present'
  } else if(wesr.roll.status === "A") {
    status.roll = 'absent'
  } else if(['T', 'U', 'L'].includes(wesr.roll.status)) {
    status.roll = 'tardy'
  }

  return status
}

export function canSubmitRoll(dateDetails) {
  let weekStart = dateDetails.weekStart
  let weekEnd = addDays(dateDetails.weekEnd, 2)
  let rollDate = new Date()
  return (rollDate >= weekStart && rollDate <= weekEnd)
}

export function canFinalizeRolls(term, date, finalizedweeks) {
  let weekView = getWeekFromDate(term, date)
  let isWeekFinalized = (finalizedweeks.indexOf(weekView.toString()) >= 0)
  // to enforce time limitation on when trainees can finalize
  let now = new Date()
  let currentWeek = getWeekFromDate(term, now)
  let day = getDay(now)
  // Sunday 17:45 is when you can begin finalizing
  let startFinalization = setMinutes(setHours(startOfWeek(now), 17), 45)
  let canFinalizeWeek = !isWeekFinalized && (currentWeek > weekView ||
                          (currentWeek == weekView && isSunday(now) && now > startFinalization))
  return canFinalizeWeek
}

export function isWeekFinalized(term, date, finalizedweeks) {
  return finalizedweeks.indexOf(getWeekFromDate(term, date).toString()) >= 0
}

export const compareLeaveslipEvents = (e1, e2) => {
  return new Date(e1.date) < new Date(e2.date) ? -1 : 1
}

export const compareEvents = (e1, e2) => {
  return new Date(e1.start_datetime) < new Date(e2.start_datetime) ? -1 : 1
}

export const compareLeaveslips = (ls1, ls2) => {
  let ls1Date = new Date(ls1.events.sort(compareLeaveslipEvents).slice(-1)[0].date)
  let ls2Date = new Date(ls2.events.sort(compareLeaveslipEvents).slice(-1)[0].date)
  return ls1Date < ls2Date ? -1 : 1
}

export function lastLeaveslip(leaveslips, type, status) {
  let matchingSlips = leaveslips.filter((ls) => {
    return ls.status == status && ls.type == type
  })
  return matchingSlips.sort(compareLeaveslips).slice(-1)[0]
}

export function getPeriodFromDate(term, date) {
  let period = Math.floor(
    differenceInWeeks(
      startOfWeek(date, {weekStartsOn: 1}),
      new Date(term.start)
    ) / 2
  )
  // if it's interim
  if (period < 0) {
    return 0
  }

  if (period > 9) {
    return 9
  }

  return period
}

export function getWeekFromDate(term, date) {
  let week = Math.floor(
    differenceInWeeks(
      startOfWeek(date, {weekStartsOn: 1}),
      new Date(term.start)
    )
  )
  // if it's interim
  if (week < 0) {
    return 0
  }

  if (week > 19) {
    return 19
  }
  return week
}

export const taInformedToServerFormat = ta_informed => {
  if (ta_informed.id == "texted") {
    return {
      texted: true,
      informed: false,
    }
  } else if (ta_informed.id != "true") {
    return {
      texted: false,
      informed: false,
    }
  } else {
    return {
      informed: true,
      texted: false,
    }
  }
}

export const isAM = (user) => {
  for (let group of AM_GROUPS) {
    if (user.groups.indexOf(group) >= 0) {
      return true;
    }
  }
  return false;
}
