import Cookies from 'js-cookie'

const FanKey = 'current_fan'

export function getCurrentFanId() {
    return Cookies.get(FanKey)
}
export function setCurrentFanId(id) {
    return Cookies.set(FanKey, id)
}

