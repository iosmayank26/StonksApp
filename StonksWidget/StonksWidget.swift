//
//  StonksWidget.swift
//  StonksWidget
//
//  Created by Mayank Gupta on 23/05/21.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct StonksWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var family

    var body: some View {
        if family == .systemSmall {
            StonksWidgetSmall()
        } else {
            StonksWidgetMedium()
        }
    }
}

struct StonksWidgetSmall: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Investment")
                .font(Font.footnote.smallCaps())
                .foregroundColor(.secondary)
            Text("Trading Trends")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text("Learn how to quickly start your investment journey.")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .padding(12)
    }
}

struct StonksWidgetMedium: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Investment")
                .font(Font.footnote.smallCaps())
                .foregroundColor(.secondary)
            Text("Trading Trends")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text("Learn how to quickly start your investment journey.")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .padding(12)
    }
}

@main
struct StonksWidget: Widget {
    let kind: String = "StonksWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            StonksWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("StonksWidget")
        .description("First step towards investing.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

struct StonksWidget_Previews: PreviewProvider {
    static var previews: some View {
        StonksWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
