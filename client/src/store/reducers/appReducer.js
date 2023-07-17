import actionTypes from "../actions/actionTypes";
const initState = {
    categories: [],
    
}
const appReducer = (state = initState, action) => {
    switch (action.type) {
        case actionTypes.GET_CATEGORIES:
            return {
                ...state,
                categories: action.categories || []
            }
        

        default:
            return state;
    }
}

export default appReducer   