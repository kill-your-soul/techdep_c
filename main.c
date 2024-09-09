#include <stdio.h>

struct Person
{
    char name[50];
    int age;
    char profession[50];
};

void print(struct Person *p)
{
    printf("Name: %s\n", p->name);
    printf("Age: %d\n", p->age);
    printf("Profession: %s\n", p->profession);
}

int main() {
    struct Person p = {
        .name = "John Doe",
        .age = 30,
        .profession = "Software Engineer"
    };

    print(&p);
}