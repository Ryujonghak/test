import http from "../http-common";

class ReservationDataService {
    getAll(page, size) {
        return http.get(`/reservation/all?page=${page}&size=${size}`)
    }

    getUsernameReservation(rusername, page, size) {
        return http.get(`/reservation/search?rusername=${rusername}&page=${page}&size=${size}`)
    }

    getReservation(reservno) {
        return http.get(`reservation/searchById/${reservno}`)
    }

    create(username, data) {
        console.log(username);
        console.log(data);
        return http.post(`/reservation/${username}`, data);
    }

    update(reservno, username, data) {
        return http.put(`/reservation/${reservno}`, username, data);
    }

    delete(reservno) {
        return http.delete(`/review/deletion/${reservno}`);
    }
}

export default new ReservationDataService();