# Добавить сиды сюда
company = Company.find_or_create_by(name: "ПСБ")

employee = company.employees.find_or_create_by(firstname: "Альберт", lastname: "Абдрашитов", patronymic: "Мазитович",
                                    email: "albert@psbank.ru", phone: "+7 (903) 676-8494",
                                    location: "Москва, Дербеневская Набережная, д. 7, стр./корпус 22, подъезд А, 2 этаж, Open Space 1240, место 127",
                                    position: "Главный специалист по работе с ключевыми клиентами", age: "32 года",
                                    departament: "Группа внутренних коммуникаций и развития корпоративной культуры / Департамент управления персоналом / Подразделения под Барыбина О.Г.")
employee.update(password: "123456")
employee = company.employees.find_or_create_by(firstname: "Василий", lastname: "Иванов", patronymic: "Олегович",
                                    email: "vasiliy@psbank.ru", phone: "+7 (987) 123-4567",
                                    location: "Санкт-Петербург",
                                    position: "Руководитель backend-направления", age: "28 лет",
                                    departament: "Группа разработки, сопровождения и эксплуатации программного обеспечения в Поволжье")
employee.update(password: "123456")

onboarding_step1 = OnboardingStep.find_or_create_by(period: :first_day, name: 'Оформление на работу')
onboarding_step1.tasks.find_or_create_by(position: 1, name: 'Подписание трудового договора')
onboarding_step1.tasks.find_or_create_by(position: 2, name: 'Получение welcome pack')
onboarding_step1.tasks.find_or_create_by(position: 3, name: 'Отправка на адаптацию в виде таймлайна')
onboarding_step1.tasks.find_or_create_by(position: 4, name: 'Отправка данных о местоположении')
onboarding_step1.tasks.find_or_create_by(position: 5, name: 'Отправка контактов встречающего')
onboarding_step1.tasks.find_or_create_by(position: 6, name: 'Опрос по результатам приёма')

onboarding_step2 = OnboardingStep.find_or_create_by(period: :first_day, name: 'Выход на рабочее место')
onboarding_step2.tasks.find_or_create_by(position: 7, name: 'Назначение наставника и знакомство')
onboarding_step2.tasks.find_or_create_by(position: 8, name: 'Знакомство с офисом')
onboarding_step2.tasks.find_or_create_by(position: 9, name: 'Ознакомление с должностной инструкцией')

onboarding_step3 = OnboardingStep.find_or_create_by(period: :first_day, name: 'Прохождение обязательных курсов и получение доступов')
onboarding_step3.tasks.find_or_create_by(position: 10, name: 'Прохождение обязательного инструктажа')
onboarding_step3.tasks.find_or_create_by(position: 11, name: 'Оформление базовых доступов')
onboarding_step3.tasks.find_or_create_by(position: 12, name: 'Доступы к площадкам разработки и тестирования')

onboarding_step4 = OnboardingStep.find_or_create_by(period: :second_day, name: 'Знакомство с банком')
onboarding_step4.tasks.find_or_create_by(position: 13, name: 'Что тебе доступно в банке')
onboarding_step4.tasks.find_or_create_by(position: 14, name: 'Что требуется от тебя')
onboarding_step4.tasks.find_or_create_by(position: 15, name: 'Правила героев ПСБ')
onboarding_step4.tasks.find_or_create_by(position: 16, name: 'Возможности, которые предоставляет банк')
onboarding_step4.tasks.find_or_create_by(position: 17, name: 'Знакомство с активностями')
onboarding_step4.tasks.find_or_create_by(position: 18, name: 'Обучение и развитие')
onboarding_step4.tasks.find_or_create_by(position: 19, name: 'Социальный пакет')
onboarding_step4.tasks.find_or_create_by(position: 20, name: 'Опрос по изученному материалу')

onboarding_step5 = OnboardingStep.find_or_create_by(period: :second_day, name: 'Знакомство с блоком информационных технологий')
onboarding_step5.tasks.find_or_create_by(position: 21, name: 'Структура и функции БИТ')
onboarding_step5.tasks.find_or_create_by(position: 22, name: 'Где я в структуре')
onboarding_step5.tasks.find_or_create_by(position: 23, name: 'Команда (руководство)')
onboarding_step5.tasks.find_or_create_by(position: 24, name: 'Инструменты работы')
onboarding_step5.tasks.find_or_create_by(position: 25, name: 'Активности и специальные проекты')
onboarding_step5.tasks.find_or_create_by(position: 26, name: 'Опрос по изученному материалу')

onboarding_step6 = OnboardingStep.find_or_create_by(period: :third_day, name: 'Заполнение профиля сотрудника')
onboarding_step6.tasks.find_or_create_by(position: 27, name: 'О себе')
onboarding_step6.tasks.find_or_create_by(position: 28, name: 'Компетенции')
onboarding_step6.tasks.find_or_create_by(position: 29, name: 'Увлечения')
onboarding_step6.tasks.find_or_create_by(position: 30, name: 'Цели')

onboarding_step7 = OnboardingStep.find_or_create_by(period: :third_day, name: 'Знакомство с подразделением или центром компетенций')
onboarding_step7.tasks.find_or_create_by(position: 31, name: 'О центре или подразделении')
onboarding_step7.tasks.find_or_create_by(position: 32, name: 'Зона ответственности')
onboarding_step7.tasks.find_or_create_by(position: 33, name: 'Коллеги и роли')
onboarding_step7.tasks.find_or_create_by(position: 34, name: 'Приветственный кофе (онлайн или офлайн)')
onboarding_step7.tasks.find_or_create_by(position: 35, name: 'Определение списка необходимого ПО')
onboarding_step7.tasks.find_or_create_by(position: 36, name: 'Знакомство с инструментами работы и отчетностью')
onboarding_step7.tasks.find_or_create_by(position: 37, name: 'Развитие компетенций сотрудников')

onboarding_step8 = OnboardingStep.find_or_create_by(period: :fourth_day, name: 'Знакомство с продуктом/системой')
onboarding_step8.tasks.find_or_create_by(position: 38, name: 'О системе')
onboarding_step8.tasks.find_or_create_by(position: 39, name: 'Ответственные по компетенциям')
onboarding_step8.tasks.find_or_create_by(position: 40, name: 'Архитектура продукта')
onboarding_step8.tasks.find_or_create_by(position: 41, name: 'Эксплуатационная документация')
onboarding_step8.tasks.find_or_create_by(position: 42, name: 'Пользовательская документация')
onboarding_step8.tasks.find_or_create_by(position: 43, name: 'Правила поддержки')
onboarding_step8.tasks.find_or_create_by(position: 44, name: 'Правила развития')

onboarding_step9 = OnboardingStep.find_or_create_by(period: :fourth_day, name: 'Знакомство с проектом')
onboarding_step9.tasks.find_or_create_by(position: 45, name: 'Цели и задачи')
onboarding_step9.tasks.find_or_create_by(position: 46, name: 'Карта коммуникаций')
onboarding_step9.tasks.find_or_create_by(position: 47, name: 'Организационная структура проекта (команда проекта и зоны ответственности)')
onboarding_step9.tasks.find_or_create_by(position: 48, name: 'Результаты проекта')
onboarding_step9.tasks.find_or_create_by(position: 49, name: 'План работ и контрольные точки')
onboarding_step9.tasks.find_or_create_by(position: 50, name: 'Обязательные мероприятия')
onboarding_step9.tasks.find_or_create_by(position: 51, name: 'Правила работы')

onboarding_step10 = OnboardingStep.find_or_create_by(period: :fifth_day, name: 'Детальное знакомство с проектом, продуктами')
onboarding_step10.tasks.find_or_create_by(position: 52, name: 'Изучение технической документации')
onboarding_step10.tasks.find_or_create_by(position: 53, name: 'Назначение регулярной встречи с наставником')
onboarding_step10.tasks.find_or_create_by(position: 54, name: 'Назначение регулярной встречи с руководителем центра компетенций')
onboarding_step10.tasks.find_or_create_by(position: 55, name: 'Изучение процессов работы')

onboarding_step11 = OnboardingStep.find_or_create_by(period: :fifth_day, name: 'Составление испытательного срока')
onboarding_step11.tasks.find_or_create_by(position: 56, name: 'План на испытательный срок')
onboarding_step11.tasks.find_or_create_by(position: 57, name: 'Регулярная встреча с наставником')
onboarding_step11.tasks.find_or_create_by(position: 58, name: 'Промежуточные встречи с обратной связью (2 раза в неделю)')

onboarding_step12 = OnboardingStep.find_or_create_by(period: :weekly, name: 'Пульс адаптации')
onboarding_step12.tasks.find_or_create_by(position: 59, name: 'Встреча с наставником')
onboarding_step12.tasks.find_or_create_by(position: 60, name: 'Опрос по качеству работы с наставником')
onboarding_step12.tasks.find_or_create_by(position: 61, name: 'Опрос по удовлетворенности работой')

onboarding_step13 = OnboardingStep.find_or_create_by(period: :third_day, name: 'Мероприятия')
onboarding_step13.tasks.find_or_create_by(position: 62, name: 'Welcome day')
onboarding_step13.tasks.find_or_create_by(position: 63, name: 'Разговор о развитии')
