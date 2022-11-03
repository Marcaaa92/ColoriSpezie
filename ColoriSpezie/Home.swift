//
//  Home.swift
//  ColoriSpezie
//
//  Created by user228391 on 10/5/22.
//

import SwiftUI

struct ColorList: View {
    var colors:[Color]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 230) {
                ForEach(colors, id: \.self) { color in
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(color)
                            .frame(width: 200, height: 300, alignment: .center)
                            //.rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 210) / -20), axis: (x: 0, y: 1.0, z: 0))
                    }
                }
            }
        }
    }
}

struct ColorListView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                InEvidenzaView(colors: [.blue, .green, .orange, .red, .gray, .pink, .yellow]).frame(height: 200)
                Text("RCETTE CONSIGLIATE")
                ColorList(colors: [.blue, .green, .orange, .red, .gray, .pink, .yellow]).frame(height: 200)
                Text("RICETTE DEL MOMENTO")
                ColorList(colors: [.blue, .green, .orange, .red, .gray, .pink, .yellow]).frame(height: 200)
                Text("NOVITÀ")
                ColorList(colors: [.blue, .green, .orange, .red, .gray, .pink, .yellow]).frame(height: 200)
            }

        }
    }
}

struct InEvidenzaView: View {
    var colors:[Color]
    var body: some View {
        TabView {
            ForEach(colors , id: \.self) { color in
                Rectangle()
                    .foregroundColor(color)
                    .frame(alignment: .center)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct HomeView: View {
    var body: some View {
        TabView {
            ColorListView()
        .tabItem {
        Image(systemName: "house.fill")
        Text("Home")
        }
        BookmarkView()
        .font(.system(size: 30, weight: .bold, design: .rounded))
        .tabItem {
        Image(systemName: "bookmark.circle.fill")
        Text("Bookmark")
        }
        Profilo()
        .font(.system(size: 30, weight: .bold, design: .rounded))
        .tabItem {
        Image(systemName: "person.crop.circle")
        Text("Profile")
        }
        }
    }
}

struct ColorListPreviews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}

