# Singleton vs Dependency Injection

## Singleton Pattern

- Specification:
 - One and only one object instance of the given class
 - Lazy object instantiation
- Usefull for:
 - Factory classes (generating instances of objects)
 - Global objects (accessible across the application)

## Dependency Injection Pattern

- Specification:
 - Resolve dependencies between components
 - remove the high coupling between multiple components
- Usefull for:
 - Resolve dependencies between components && remove the high coupling between multiple components

## Others options

- globals
- static proxy ("facade" laravel)
- service locator/registry
