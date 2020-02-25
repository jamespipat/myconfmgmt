let menu = {
  _course: {
    appetizers: [],
    mains: [],
    desserts: []
  },
  get appetizers() {
      return this._course['appetizers'];
  },
  set appetizers(appetizers) {
      this._course['appetizers'] = appetizers;
  },
  get mains() {
      return this._course['mains'];
  },
  set mains(mains) {
      this._course['mains'] = mains;
  },
  get desserts() {
      return this._course['desserts'];
  },
  set desserts(desserts) {
      this._course['desserts'] = desserts;
  },
  get course() {
    return {
      appetizers: this.appetizers,
      mains: this.mains,
      desserts: this.desserts
    };
  },
  addDishToCourse(courseName, dishName, dishPrice) {
      const dish = {
          name: dishName,
          price: dishPrice
      };
    this._course[courseName].push(dish);
  },
  getRandomDishFromCourse(courseName) {
    const dishes = this._course[courseName];
    const pos = Math.floor(Math.random() * dishes.length);
    return dishes[pos];
  },
  generateRandomMeal() {
    const appetizer = this.getRandomDishFromCourse('appetizers');
    const main = this.getRandomDishFromCourse('mains');
    const dessert = this.getRandomDishFromCourse('desserts');
    const totalPrice = appetizer.price + main.price + dessert.price;
    return `Your meal is ${appetizer.name}, ${main.name}, ${dessert.name}; The price is $${totalPrice}.`;
  }
};


menu.addDishToCourse('appetizers', 'salad', 10);
menu.addDishToCourse('desserts', 'wings', 15);
menu.addDishToCourse('mains', 'taco', 32);

const meal = menu.generateRandomMeal();
console.log(meal);