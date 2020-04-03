// Do not write or modify code below this line.
module.exports = "_";

const _ = {
    clamp(num, lower, upper) {
        let lowerClampedValue = Math.max(num, lower);
        let clampedValue = Math.min(lowerClampedValue, upper);
        return clampedValue;
    },
    inRange(num, start, end) {
        if (num == undefined) {
            end = start;
            start = 0;
        }
        if (start > end) {
            tempend = end;
            start = end;
            end = tempend;
        }
        const isInRange = (start <= num && num < end);
        return isInRange;

    },
    words(word) {

    }
};