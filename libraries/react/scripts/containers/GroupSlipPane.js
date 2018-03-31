import { connect } from 'react-redux'
import { postGroupSlip, changeGroupSlipForm, resetGroupslipForm } from '../actions'
import { lastLeaveslips } from '../selectors/selectors'
import GroupSlipForm from '../components/GroupSlipForm'

const mapStateToProps = (state) => {
  return {
    form: {
      ...state.form.groupSlip,
      events: state.events,
      selectedEvents: state.selectedEvents,
      trainee: state.trainee,
      traineeView: state.form.traineeView
    },
    tas: state.tas,
    trainees: state.trainees,
  }
}
const mapDispatchToProps = (dispatch) => {
  return {
    postGroupSlip: (values) => { dispatch(postGroupSlip(values)) },
    changeGroupSlipForm: (values) => { dispatch(changeGroupSlipForm(values)) },
    resetForm: () => { dispatch(resetGroupslipForm()) },
  }
}

const GroupSlipPane = connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupSlipForm)

export default GroupSlipPane
