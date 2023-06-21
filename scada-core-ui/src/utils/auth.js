import Cookies from 'js-cookie'


const farmIdKey = "farmId";

export function getFarmId() {
    return Cookies.get(farmIdKey)
}
//登录或更改下拉框修改此值即可
export function setFarmId(farmId) {
    return Cookies.set(farmIdKey, farmId)
}
export function removeFarmId() {
    return Cookies.remove(farmIdKey)
}

export function setCookie(key, value) {
    return Cookies.set(key, value);
}
export function getCookie(key) {
    return Cookies.get(key);
}

const UserId="userId";
const UserName="username";
export function getUserId() {
    return Cookies.get(UserId)
}
export function setUserId(userId) {
    return Cookies.set(UserId, userId)
}
export function removeUserId() {
    return Cookies.remove(UserId)
}
export function getUserName() {
    return Cookies.get(UserName)
}
export function setUserName(username) {
    return Cookies.set(UserName, username)
}
export function removeUserName() {
    return Cookies.remove(UserName)
}

const TokenKey = 'user_token'
export function getToken() {
    return Cookies.get(TokenKey)
}
export function setToken(token) {
    return Cookies.set(TokenKey, token)
}
export function removeToken() {
    return Cookies.remove(TokenKey)
}
