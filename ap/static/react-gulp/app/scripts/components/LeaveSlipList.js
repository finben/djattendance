import React, { PropTypes } from 'react'
import { Collapse } from 'react-bootstrap'
import LeaveSlipDetail from './LeaveSlipDetail'

const LeaveSlipList = ({ slips, leaveSlipsShow, leaveSlipDetailsShow, onDetailClick, postRollSlip, deleteSlip,
                          otherReasonsShow, toggleOtherReasons, selectedEvents, tas }) => {
  return (
    <Collapse in={leaveSlipsShow}>
      <div>
        <div className="toggle-title-mid">
          <span>
            Pending ({slips.pending.length})
          </span>
          <div>
            {slips.pending.map(function(slip) {
              return <LeaveSlipDetail
                        {...slip}
                        leaveSlipDetailsShow={leaveSlipDetailsShow}
                        onClick={() => onDetailClick(slip.id, slip.events, slip.type, tas[slip.TA], slip.comments, slip.informed)}
                        otherReasonsShow={otherReasonsShow}
                        toggleOtherReasons={() => toggleOtherReasons()}
                        selectedEvents={selectedEvents}
                        tas={tas}
                        postRollSlip={(rollSlip, selectedEvents, slipId) => postRollSlip(rollSlip, selectedEvents, slipId)}
                        deleteSlip={(slipId) => deleteSlip(slipId)}
                      />
            })}
          </div>
        </div>
        <div className="toggle-title-mid">
          <span>
            Denied ({slips.denied.length})
          </span>
          <div>
            {slips.denied.map(function(slip) {
              return <LeaveSlipDetail
                        {...slip}
                        leaveSlipDetailsShow={leaveSlipDetailsShow}
                        onClick={() => onDetailClick(slip.id, slip.events, slip.type, tas[slip.TA], slip.comments, slip.informed)}
                        otherReasonsShow={otherReasonsShow}
                        toggleOtherReasons={() => toggleOtherReasons()}
                        selectedEvents={selectedEvents}
                        tas={tas}
                        postRollSlip={(rollSlip, selectedEvents, slipId) => postRollSlip(rollSlip, selectedEvents, slipId)}
                        deleteSlip={(slipId) => deleteSlip(slipId)}
                      />
            })}
          </div>
        </div>
        <div className="toggle-title-mid">
          <span>
            Approved ({slips.approved.length})
          </span>
          <div>
            {slips.approved.map(function(slip) {
              return <LeaveSlipDetail
                        {...slip}
                        leaveSlipDetailsShow={leaveSlipDetailsShow}
                        onClick={() => onDetailClick(slip.id, slip.events, slip.type, tas[slip.TA], slip.comments, slip.informed)}
                        otherReasonsShow={otherReasonsShow}
                        toggleOtherReasons={() => toggleOtherReasons()}
                        selectedEvents={selectedEvents}
                        tas={tas}
                        postRollSlip={(rollSlip, selectedEvents, slipId) => postRollSlip(rollSlip, selectedEvents, slipId)}
                        deleteSlip={(slipId) => deleteSlip(slipId)}
                      />
            })}
          </div>
        </div>
      </div>
    </Collapse>
  )
}

LeaveSlipList.propTypes = {
  slips: PropTypes.object.isRequired
}

export default LeaveSlipList