import SwiftUI

struct LoopsChallengeContentView: View {
    
    @State var number1 = ""
    @State var number2 = ""
    @State var number3 = ""
    @State var number4 = ""
    @State var number5 = ""
    @State var output = ""
    @State var name1 = ""
    @State var name2 = ""
    @State var name3 = ""
    @State var score1: Int?
    @State var score2: Int?
    @State var score3: Int?
    
    @State var values: [String] = []
    @State var namesAndScores: [String:Int] = [:]
    var body: some View {
        VStack{
            
            Group {
                Divider()
                Text("Loops Challenge")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.title)
                Divider()
            }
            
            Group {
                Text("Enter ALL five numbers into the textfields on the left. When you are done entering the numbers, press each button after completing the code.")
                HStack{
                    Text("#1:")
                    TextField("Enter Number Here", text: $number1)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        mvpButtonPressed()
                    }, label: {
                        Text("MVP")
                            .frame(width: 200, height: 35, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                    })
                }
                HStack{
                    Text("#2:")
                    TextField("Enter Number Here", text: $number2)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        stretch1ButtonPressed()
                    }, label: {
                        Text("Stretch #1")
                            .frame(width: 200, height: 35, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                    })
                }  
                HStack{
                    Text("#3:")
                    TextField("Enter Number Here", text: $number3)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        stretch2ButtonPressed()
                    }, label: {
                        Text("Stretch #2")
                            .frame(width: 200, height: 35, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                    })
                }
                
                HStack{
                    Text("#4:")
                    TextField("Enter Number Here", text: $number4)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        stretch3ButtonPressed()
                    }, label: {
                        Text("Stretch #3")
                            .frame(width: 200, height: 35, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                    })
                }
                
                HStack{
                    Text("#5:")
                    TextField("Enter Number Here", text: $number5)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {
                        stretch4ButtonPressed()
                    }, label: {
                        Text("Stretch #4")
                            .frame(width: 200, height: 35, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                    })
                }
                Text(output)
                    .frame(maxWidth: .infinity, maxHeight: 150)
                    .font(.title)
            }
            Spacer()
            Group {
                Text(".")
                HStack{
                    Text("#1:")
                    TextField("Enter Name Here", text: $name1)
                    TextField("Enter Score", value: $score1, format: .number)
                }
                HStack{
                    Text("#2:")
                    TextField("Enter Name Here", text: $name2)
                    TextField("Enter Score", value: $score2, format: .number)
                }
                HStack{
                    Text("#3:")
                    TextField("Enter Name Here", text: $name3)
                    TextField("Enter Score", value: $score3, format: .number)
                }
                Button(action: {
                    stretch5ButtonPressed()
                }, label: {
                    Text("Stretch #5")
                        .frame(width: 400, height: 35, alignment: .center)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5.0, style: .continuous))
                })
            }
            .textFieldStyle(.roundedBorder)
            
            Group {
                Image("MobileMakersEduNB")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
            }
            .padding()
            
        }
        .padding()
    }
    
    func setValues() {
        output = ""
        values = [number1,number2,number3,number4,number5]
        if let score1 = score1, let score2 = score2, let score3 = score3 {
            namesAndScores = [name1:score1,name2:score2,name3:score3]
        }
        
    }
    
    func mvpButtonPressed()
    {
        setValues()
        for i in self.values{
            output.append(i)
            output.append(" ")
        }
    }
    func stretch1ButtonPressed() {
        
        setValues()
        for i in values{
            if i != values[0]{
                output.append(",")
            }
            output.append(i)
        }
    }
    
    func stretch2ButtonPressed() {
        setValues()
        var maximum = Int(values[0])
        for i in values{
            if maximum ?? 0 < Int(i) ?? 0{
                maximum = Int(i)
            }
        }
        output = "After searching the array, \(maximum!) is the largest"
    }
    
    func stretch3ButtonPressed() {
        setValues()
        var sum = 0
        for i in values{
            sum += Int(i) ?? 0
        }
        output = "The total of the array is \(sum)"
    }
    
    func stretch4ButtonPressed() {
        
        setValues()
        var minimum = Int(values[0])
        var index = 0
        
        for (p,i) in values.enumerated(){
            if minimum ?? 0 > Int(i) ?? 0{
                minimum = Int(i)
                index = Int(p) + 1
            }
        }
        output = " minimum is \(minimum!) index # \(index)"
    }
    
    func stretch5ButtonPressed() {
        
        setValues()
        for (i,v) in namesAndScores{
            output.append(i)
            output.append(":")
            output.append(String(v))
            output.append("\n")
        }
        
       
        
        
        
        
        
    }
}

