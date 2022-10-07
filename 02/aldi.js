const getNearestMultiple = (number, multiple) => {
    return [
        number - (number % multiple),
        number + (multiple - (number % multiple)),
    ];
};

console.log(getNearestMultiple(301, 8));
