export class Movie {
    constructor(
        public id: number,
        public genreId: number,
        public studioId: number,
        public name: string,
        public yearReleased: number,
        public genre: {
            name: string
        },
        public studio: {
            name: string, 
            specialization: string
        }) {
        
    }
}
