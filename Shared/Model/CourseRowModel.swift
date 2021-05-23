//
//  CourseRowModel.swift
//  Stonks
//
//  Created by Mayank Gupta on 22/05/21.
//

import SwiftUI

struct CourseRowModel: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var subtitle: String
    var logo: String
    var color: Color
}

var courseRowModel = [
    CourseRowModel(
        title: "The Need to Invest",
        subtitle: "Identify avenues to invest the savings in suitable investment vehicle.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.1776223481, green: 0.003123702249, blue: 0.9679456353, alpha: 1))
    ),
    CourseRowModel(
        title: "Regulators",
        subtitle: "Understand the need to regulate the markets...",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.4163374901, green: 0, blue: 0.9587711692, alpha: 1))
    ),
    CourseRowModel(
        title: "Financial Intermediaries",
        subtitle: "Overview of the financial intermediaries in the Indian stock market and the services they offer.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.5358095765, green: 0.006698517594, blue: 0.9496632218, alpha: 1))
    ),
    CourseRowModel(
        title: " The IPO Markets – Part 1",
        subtitle: "Understand the origins of business and the funding environment of business.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.6299541593, green: 0.0007464740775, blue: 0.9487422109, alpha: 1))
    ),
    CourseRowModel(
        title: "The IPO Markets – Part 2",
        subtitle: "Learn the basics of the IPO market & the process of how to go about investing in IPO’s.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.6941550374, green: 0, blue: 0.9111183882, alpha: 1))
    ),
    CourseRowModel(
        title: " The Stock Markets",
        subtitle: "We explore the basics of stock trading and understand what makes the stock move on a minute by minute basis.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.7368183136, green: 0, blue: 0.865359962, alpha: 1))
    ),
    CourseRowModel(
        title: "The Stock Markets Index",
        subtitle: "An overview of the Indian Stock Market Indices, their construction, and practical uses in trading .",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.8180006742, green: 0.002616824117, blue: 0.8187212348, alpha: 1))
    ),
    CourseRowModel(
        title: "Commonly Used Jargons",
        subtitle: "Glossary of common stock market terms & associated concepts used in trading.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.8607265353, green: 0.002661613282, blue: 0.7145370841, alpha: 1))
    ),
    CourseRowModel(
        title: "The Trading Terminal",
        subtitle: "An introduction to The Trading Terminal, its interface, various functionalities and relevant concepts.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.8991689086, green: 0.006000946742, blue: 0.6428537369, alpha: 1))
    ),
    CourseRowModel(
        title: "Clearing and Settlement Process",
        subtitle: "The behind the scene operations involved in share buying & selling.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.9505215287, green: 0.0005362218362, blue: 0.5361744165, alpha: 1))
    ),
    CourseRowModel(
        title: "Key Events and Their Impact on Markets",
        subtitle: "An introduction to the various macros economic factors that impact the performance of shares and stock markets.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.9505215287, green: 0.0005362218362, blue: 0.5361744165, alpha: 1))
    ),
    CourseRowModel(
        title: "Getting started!",
        subtitle: "Learn about the importance of developing a Point of View on stock markets & its impact.",
        logo: "financial-profit",
        color: Color(#colorLiteral(red: 0.9505215287, green: 0.0005362218362, blue: 0.5361744165, alpha: 1))
    )
]
