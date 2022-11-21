int binsearch(int* arr, int size, int target) {
    int i = 0;
    int large = 0;
    int small = 0;
    int mid = 0;
    i = 0 - 1;
    large = size - 1;

    while(small <= large) {
        mid = (small + large) / 2;
        if(*(arr + mid) == target) {
            i = mid;
            small = size;
        } else {
            if(*(arr + mid) < target) {
                small = mid + 1;
            } else {
                large = mid - 1;
            }
        }
    }
    return i;
}

int wain(int *a, int b) {
  return binsearch(a,b,3);
}
