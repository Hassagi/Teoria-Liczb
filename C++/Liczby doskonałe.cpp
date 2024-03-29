#include <iostream>
#include <math.h>
#include <time.h>

using namespace std;

bool CzyDoskonala1(long long n, long long suma = 0)
{
    for (long long i = 1; i < n; i++)
        if (n % i == 0)
            suma = suma + i;

    return(suma == n);
}

bool CzyDoskonala2(long long n, long long suma = 0)
{
    for (long long i = 1; i <= n / 2; i++)
        if (n % i == 0)
            suma = suma + i;

    return(suma == n);
}

bool CzyDoskonala3(long long n)
{
    long long suma = 1, pierwiastek = sqrt(n);
    for (long long i = 2; i <= pierwiastek; i++)
        if (n % i == 0)
            suma = suma + i + n / i;

    if (n == pierwiastek * pierwiastek) suma = suma - pierwiastek;

    if (n == suma) return 1;

    return 0;
}

int main()
{
    long long n;
    clock_t start, stop;
    double czas;
    cout << "Podaj n:" << endl;
    cin >> n;
    start = clock();
    if (CzyDoskonala1(n) == true)
        cout << "Liczba jest doskonala " << endl;
    else
        cout << "Liczba nie jest doskonala " << endl;
    stop = clock();
    czas = (double)(stop - start) / CLOCKS_PER_SEC;
    cout << "czas: " << czas << endl;
    start = clock();
    if (CzyDoskonala2(n) == true)
        cout << "Liczba jest doskonala " << endl;
    else
        cout << "Liczba nie jest doskonala " << endl;
    stop = clock();
    czas = (double)(stop - start) / CLOCKS_PER_SEC;
    cout << "czas: " << czas << endl;
    start = clock();
    if (CzyDoskonala3(n) == true)
        cout << "Liczba jest doskonala " << endl;
    else
        cout << "Liczba nie jest doskonala " << endl;
    stop = clock();
    czas = (double)(stop - start) / CLOCKS_PER_SEC;
    cout << "czas: " << czas << endl;
    return 0;
}
