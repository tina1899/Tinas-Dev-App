//
//  ContentView.swift
//  Tinas App
//
//  Created by New User1 on 1/8/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var nightStand = NightStand()
    
    @State var searchString : String = ""
    
    var searchBar : some View {
        HStack{
            TextField("Search Nightstand", text: self.$searchString)
            Button(action: self.filter, label: {
                Text("Filter")
            })
            Button(action: self.refresh, label: {
                 Text("Remove filter")
            })
            
        }
    }
    
    func refresh() {
        self.nightStand.refresh()
    }
        
    func filter() {
        for (index, item) in self.nightStand.items.enumerated().reversed(){
           
            if (!item.need.contains(searchString)
            && !item.description.contains(searchString)
            && !item.category.contains(searchString))
            {
                self.nightStand.items.remove(at: index)
            }
        }
    }
    
    var body: some View {
        //         VStack {
    NavigationView{
        
        VStack{
            Text("My Nightstand")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.top, -50.0)
                
               
                
        searchBar.padding()
            
        List(self.nightStand.items) {
            item in
            HStack
            {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            //Text(item.category)
            Text(item.description + " (" + item.category + ")")
                .font(.footnote)
                .foregroundColor(Color.blue)	
                Text(item.need).font(.footnote).foregroundColor(Color.blue)
            }
        }//end of List
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
	
