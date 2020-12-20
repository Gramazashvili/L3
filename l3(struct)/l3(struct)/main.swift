//
//  main.swift
//  l3(struct)
//
//  Created by Георгий Рамазашвили on 20.12.2020.
//

import Foundation


//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.


enum Brand {
    case gazel, ferrari, volvo
}
enum enginestatus {
    case `false`,`true`
}
enum windowstatus {
    case open , close
}


//legkovoi
struct car{
    let brand: Brand
    let yearofrelease : Int
    let trunkvolume : Int
    let runningtheengine : enginestatus
    var windowstatus : windowstatus {
        didSet{
            print("Двери стали \(windowstatus)")
            }
        willSet
            {
                print("Двери были \(windowstatus)")
            }
        
    }
    let filledtrunkvolume : Int
   
    mutating func openwinodw(status : windowstatus) {
        self.windowstatus = status
    }
    
}

//sportcar

struct SportCar{
    let brand: Brand
    let yearofrelease : Int
    let trunkvolume : Int
    let runningtheengine : enginestatus
    var windowstatus : windowstatus {
        didSet{
            print("Двери стали \(windowstatus)")
            }
        willSet
            {
                print("Двери были \(windowstatus)")
            }
        
    }
    let filledtrunkvolume : Int
   
    mutating func openwinodw(status : windowstatus) {
        self.windowstatus = status
    }
    
}
//TrunkCar
struct TrunkCar{
    let brand: Brand
    let yearofrelease : Int
    let trunkvolume : Int
    let runningtheengine : enginestatus
    var windowstatus : windowstatus {
        didSet{
            print("Двери стали \(windowstatus)")
            }
        willSet
            {
                print("Двери были \(windowstatus)")
            }
        
    }
    let filledtrunkvolume : Int
   
    mutating func openwinodw(status : windowstatus) {
        self.windowstatus = status
    }
    
    init(yearofrelease: Int){
        
        self.brand = .volvo
        self.filledtrunkvolume=10
        self.runningtheengine = .true
        self.trunkvolume=50
        self.windowstatus = .open
        self.yearofrelease = yearofrelease
        
    }
    
}


var mycar = car(brand: Brand.ferrari, yearofrelease: 2001, trunkvolume: 30, runningtheengine: enginestatus.false, windowstatus: windowstatus.close, filledtrunkvolume: 10)

mycar.openwinodw(status: .open)
print(mycar)

var mysportcar=TrunkCar(yearofrelease: 1995)
print(mysportcar)
