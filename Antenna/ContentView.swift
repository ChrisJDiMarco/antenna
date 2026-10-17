import SwiftUI

struct SensingMission: Identifiable {
    let id = UUID()
    let prompt: String
    let audience: String
    let outcome: String
    let icon: String
    let color: Color
    let confidence: Double
    let status: String
    let signals: [SenseSignal]
    let bet: FutureBet
}

struct SenseSignal: Identifiable {
    let id = UUID()
    let title: String
    let plainRead: String
    let evidence: String
    let whyEarly: String
    let sources: [String]
    let freshness: String
    let momentum: Double
    let icon: String
    let color: Color
}

struct FutureBet: Identifiable {
    let id = UUID()
    let title: String
    let kind: String
    let promise: String
    let smallestTest: String
    let proof: String
    let score: Int
    let color: Color
}

struct SourceStackItem: Identifiable {
    let id = UUID()
    let name: String
    let role: String
    let output: String
    let freshness: String
    let icon: String
    let color: Color
}

private enum Palette {
    static let paper = Color(red: 0.985, green: 0.982, blue: 0.955)
    static let paperWarm = Color(red: 1.0, green: 0.965, blue: 0.90)
    static let ink = Color(red: 0.105, green: 0.122, blue: 0.145)
    static let muted = Color(red: 0.455, green: 0.492, blue: 0.525)
    static let line = Color(red: 0.875, green: 0.870, blue: 0.830)
    static let sky = Color(red: 0.180, green: 0.610, blue: 0.970)
    static let coral = Color(red: 1.000, green: 0.365, blue: 0.340)
    static let lime = Color(red: 0.455, green: 0.790, blue: 0.220)
    static let sun = Color(red: 1.000, green: 0.730, blue: 0.190)
    static let violet = Color(red: 0.515, green: 0.410, blue: 0.940)
    static let teal = Color(red: 0.000, green: 0.690, blue: 0.650)
}

private let missions: [SensingMission] = [
    SensingMission(
        prompt: "What should I build next for indie creators?",
        audience: "Creators, small studios, AI makers",
        outcome: "Product ideas with pull",
        icon: "wand.and.sparkles",
        color: Palette.sky,
        confidence: 0.88,
        status: "Ready",
        signals: [
            SenseSignal(
                title: "People want smaller rooms with better taste",
                plainRead: "Creators are tired of infinite feeds and generic AI output. They are looking for spaces where curation, critique, and standards matter.",
                evidence: "Repeated phrases around anti-slop, invite-only critique, process receipts, and human taste.",
                whyEarly: "The language is showing up before there is a dominant product category.",
                sources: ["Substack", "Reddit", "Luma", "Discord pages"],
                freshness: "16m",
                momentum: 0.86,
                icon: "person.2.wave.2.fill",
                color: Palette.sky
            ),
            SenseSignal(
                title: "Proof beats polish",
                plainRead: "People trust artifacts more when they can see how the work was made, not just the final output.",
                evidence: "Behind-the-scenes posts are outperforming finished showcase posts in several creator communities.",
                whyEarly: "The behavior is visible, but most tools still optimize for final assets.",
                sources: ["YouTube", "X posts", "Portfolio sites"],
                freshness: "28m",
                momentum: 0.74,
                icon: "checkmark.seal.fill",
                color: Palette.lime
            )
        ],
        bet: FutureBet(
            title: "Launch a Taste Room",
            kind: "Event",
            promise: "A weekly critique room where every AI-made artifact must show its process receipts.",
            smallestTest: "Post one invite page and ask 30 creators to submit one artifact with its prompt trail.",
            proof: "Strong if 10 people apply and 3 ask who else is coming.",
            score: 91,
            color: Palette.sky
        )
    ),
    SensingMission(
        prompt: "What content will my audience want next?",
        audience: "Founders, marketers, operators",
        outcome: "Early content angles",
        icon: "megaphone.fill",
        color: Palette.coral,
        confidence: 0.81,
        status: "Scanning",
        signals: [
            SenseSignal(
                title: "Operators are rejecting AI theater",
                plainRead: "The interesting audience is moving from tool hype to proof that AI systems changed an actual workflow.",
                evidence: "More posts are asking for before/after workflows, costs saved, errors caught, and screenshots.",
                whyEarly: "SEO tools still show old AI-keyword demand, but the social language has shifted.",
                sources: ["LinkedIn", "HN", "Newsletters"],
                freshness: "9m",
                momentum: 0.79,
                icon: "chart.line.uptrend.xyaxis",
                color: Palette.coral
            ),
            SenseSignal(
                title: "Small honest failures are becoming useful",
                plainRead: "Audiences respond when builders show where agents break, not just what they can do.",
                evidence: "Comment threads cluster around debugging stories and limits.",
                whyEarly: "Most brand content is still afraid to admit failure.",
                sources: ["Reddit", "YouTube", "Comments"],
                freshness: "22m",
                momentum: 0.68,
                icon: "exclamationmark.bubble.fill",
                color: Palette.sun
            )
        ],
        bet: FutureBet(
            title: "Write the Workflow Receipt",
            kind: "Content",
            promise: "A post format that shows the messy before, the agentic loop, and the measurable after.",
            smallestTest: "Publish one teardown with receipts, then track saves and qualified inbound replies.",
            proof: "Strong if saves beat likes and at least one operator asks for the template.",
            score: 84,
            color: Palette.coral
        )
    ),
    SensingMission(
        prompt: "What are local parents quietly frustrated by?",
        audience: "Busy parents in one city",
        outcome: "Service gaps",
        icon: "figure.2.and.child.holdinghands",
        color: Palette.lime,
        confidence: 0.76,
        status: "Fresh",
        signals: [
            SenseSignal(
                title: "The gap is coordination, not information",
                plainRead: "Parents can find activities. The hard part is matching schedules, transport, friends, and last-minute changes.",
                evidence: "Reviews and forum posts repeat words like logistics, pickup, waitlist, rain plan, and group chat.",
                whyEarly: "Most local discovery apps still stop at listings.",
                sources: ["Google reviews", "Facebook pages", "City calendars"],
                freshness: "41m",
                momentum: 0.71,
                icon: "calendar.badge.clock",
                color: Palette.lime
            ),
            SenseSignal(
                title: "Trust travels through tiny parent circles",
                plainRead: "Recommendations spread through trusted micro-groups before they appear in public search.",
                evidence: "The same local names and programs recur inside comment threads, not official directories.",
                whyEarly: "Public data underestimates private word-of-mouth demand.",
                sources: ["Comments", "Local blogs", "Event pages"],
                freshness: "54m",
                momentum: 0.66,
                icon: "bubble.left.and.bubble.right.fill",
                color: Palette.teal
            )
        ],
        bet: FutureBet(
            title: "Make a Weekend Matchmaker",
            kind: "Service",
            promise: "A simple weekly text that matches kid-friendly plans with weather, age, distance, and friend overlap.",
            smallestTest: "Run it manually for 12 parents for two weekends.",
            proof: "Strong if parents forward it to another parent without being asked.",
            score: 78,
            color: Palette.lime
        )
    ),
    SensingMission(
        prompt: "What event would people actually show up for?",
        audience: "Creative people who are tired of feeds",
        outcome: "Offline experiments",
        icon: "ticket.fill",
        color: Palette.violet,
        confidence: 0.83,
        status: "Ready",
        signals: [
            SenseSignal(
                title: "Scarcity is becoming the new share button",
                plainRead: "People want rooms that feel hard to fully capture online. The value is being there, not consuming the recap.",
                evidence: "Small event pages emphasize no phones, weird locations, secret lineups, and one-night-only formats.",
                whyEarly: "The pattern is scattered across cities rather than packaged as a mainstream format.",
                sources: ["Luma", "Instagram bios", "Local newsletters"],
                freshness: "13m",
                momentum: 0.82,
                icon: "sparkles",
                color: Palette.violet
            ),
            SenseSignal(
                title: "Mixed rooms beat single-tribe rooms",
                plainRead: "The most alive events mix builders, artists, editors, and operators instead of gathering one profession.",
                evidence: "Cross-scene attendance language appears in RSVP copy and after-event comments.",
                whyEarly: "Most event software still categorizes people by industry.",
                sources: ["Event copy", "Comments", "RSVP pages"],
                freshness: "37m",
                momentum: 0.73,
                icon: "circle.hexagongrid.fill",
                color: Palette.teal
            )
        ],
        bet: FutureBet(
            title: "Host a Prototype Supper",
            kind: "Event",
            promise: "A tiny dinner where makers bring unfinished things and non-makers decide what feels alive.",
            smallestTest: "Invite 16 people with one rule: bring a half-built thing or a sharp reaction.",
            proof: "Strong if guests ask for the next date before leaving.",
            score: 86,
            color: Palette.violet
        )
    )
]

private let sourceStack: [SourceStackItem] = [
    SourceStackItem(name: "Firecrawl", role: "Turns web pages into clean source text", output: "Search results, pages, docs, newsletters", freshness: "Live", icon: "flame.fill", color: Palette.coral),
    SourceStackItem(name: "Apify", role: "Runs harder web collection jobs", output: "Dynamic sites, directories, profiles", freshness: "Queued", icon: "shippingbox.fill", color: Palette.sun),
    SourceStackItem(name: "Official APIs", role: "Keeps stable platforms reliable", output: "Reddit, YouTube, Steam, search data", freshness: "Live", icon: "bolt.horizontal.fill", color: Palette.sky),
    SourceStackItem(name: "Taste Memory", role: "Learns what you reject, save, and test", output: "Personal signal ranking", freshness: "Learning", icon: "heart.text.square.fill", color: Palette.violet)
]

struct AntennaRootView: View {
    private enum AppTab: String {
        case sense
        case signals
        case moves
        case receipts
    }

    @State private var selection: AppTab

    init() {
        let requestedTab = ProcessInfo.processInfo.environment["ANTENNA_START_TAB"]
        _selection = State(initialValue: AppTab(rawValue: requestedTab ?? "") ?? .sense)
    }

    var body: some View {
        TabView(selection: $selection) {
            MissionHomeView()
                .tabItem {
                    Label("Sense", systemImage: "antenna.radiowaves.left.and.right")
                }
                .tag(AppTab.sense)

            SignalFeedView()
                .tabItem {
                    Label("Signals", systemImage: "waveform.path.ecg")
                }
                .tag(AppTab.signals)

            BetBoardView()
                .tabItem {
                    Label("Moves", systemImage: "paperplane.fill")
                }
                .tag(AppTab.moves)

            ReceiptsView()
                .tabItem {
                    Label("Receipts", systemImage: "checkmark.seal.fill")
                }
                .tag(AppTab.receipts)
        }
        .tint(Palette.sky)
        .preferredColorScheme(.light)
    }
}

struct MissionHomeView: View {
    @State private var selectedMission = missions[0]
    @State private var selectedStarter = "Build"

    private let starters = ["Build", "Content", "Customers", "Events", "Local", "Research"]

    var body: some View {
        NavigationStack {
            ZStack {
                HappyBackground()

                ScrollView {
                    VStack(alignment: .leading, spacing: 22) {
                        AppHeader()

                        MissionPromptCard(selectedStarter: $selectedStarter, starters: starters)

                        QuickReadCard(mission: selectedMission)

                        SectionHeader(title: "Active missions", detail: "4 running")

                        VStack(spacing: 12) {
                            ForEach(missions) { mission in
                                MissionRow(mission: mission, isSelected: mission.id == selectedMission.id)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.42, dampingFraction: 0.84)) {
                                            selectedMission = mission
                                        }
                                    }
                            }
                        }

                        NextMoveCard(bet: selectedMission.bet)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 18)
                    .padding(.bottom, 96)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct AppHeader: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 5) {
                Text("ANTENNA")
                    .font(.system(size: 13, weight: .black, design: .rounded))
                    .tracking(2.2)
                    .foregroundStyle(Palette.teal)
                Text("Point it anywhere")
                    .font(.system(size: 34, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
            }

            Spacer()

            Button {
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 18, weight: .black))
                    .foregroundStyle(.white)
                    .frame(width: 48, height: 48)
                    .background(Palette.coral, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .shadow(color: Palette.coral.opacity(0.26), radius: 12, y: 7)
            }
            .accessibilityLabel("Create mission")
        }
    }
}

struct MissionPromptCard: View {
    @Binding var selectedStarter: String
    let starters: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("What do you want to sense?")
                        .font(.system(size: 27, weight: .black, design: .rounded))
                        .foregroundStyle(Palette.ink)
                        .lineLimit(2)
                        .minimumScaleFactor(0.78)
                    Text("Ideas, demand, complaints, search shifts, events, niches, anything with a pulse.")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .lineSpacing(3)
                        .foregroundStyle(Palette.muted)
                }

                Spacer(minLength: 12)

                Image(systemName: "sparkle.magnifyingglass")
                    .font(.system(size: 27, weight: .bold))
                    .foregroundStyle(Palette.sky)
                    .frame(width: 54, height: 54)
                    .background(Palette.sky.opacity(0.13), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 9) {
                    ForEach(starters, id: \.self) { starter in
                        Button {
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.86)) {
                                selectedStarter = starter
                            }
                        } label: {
                            Text(starter)
                                .font(.system(size: 14, weight: .black, design: .rounded))
                                .foregroundStyle(selectedStarter == starter ? .white : Palette.ink)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 10)
                                .background(selectedStarter == starter ? Palette.sky : .white, in: Capsule())
                                .overlay(Capsule().stroke(Palette.line, lineWidth: selectedStarter == starter ? 0 : 1))
                        }
                        .buttonStyle(.plain)
                    }
                }
            }

            Button {
            } label: {
                HStack {
                    Image(systemName: "play.fill")
                        .font(.system(size: 14, weight: .black))
                    Text("Start a sensing mission")
                        .font(.system(size: 16, weight: .black, design: .rounded))
                    Spacer()
                    Image(systemName: "arrow.right")
                        .font(.system(size: 15, weight: .black))
                }
                .foregroundStyle(.white)
                .padding(16)
                .background(Palette.ink, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
            .buttonStyle(.plain)
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 28, style: .continuous)
                .fill(.white)
                .shadow(color: Palette.sky.opacity(0.11), radius: 18, y: 10)
        )
        .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct QuickReadCard: View {
    let mission: SensingMission

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(mission.color.opacity(0.14))
                Image(systemName: mission.icon)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(mission.color)
            }
            .frame(width: 68, height: 68)

            VStack(alignment: .leading, spacing: 7) {
                Text("Today's read")
                    .font(.system(size: 12, weight: .black, design: .rounded))
                    .tracking(1.2)
                    .foregroundStyle(mission.color)
                Text(mission.signals[0].title)
                    .font(.system(size: 18, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
                    .lineLimit(2)
                Text("\(Int(mission.confidence * 100))% confidence")
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundStyle(Palette.muted)
            }

            Spacer(minLength: 0)
        }
        .padding(16)
        .background(Palette.paperWarm, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24, style: .continuous).stroke(Palette.sun.opacity(0.40), lineWidth: 1))
    }
}

struct MissionRow: View {
    let mission: SensingMission
    let isSelected: Bool

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: mission.icon)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(mission.color)
                .frame(width: 48, height: 48)
                .background(mission.color.opacity(0.13), in: RoundedRectangle(cornerRadius: 17, style: .continuous))

            VStack(alignment: .leading, spacing: 5) {
                Text(mission.prompt)
                    .font(.system(size: 16, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
                    .lineLimit(2)
                Text(mission.outcome)
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundStyle(Palette.muted)
            }

            Spacer(minLength: 8)

            VStack(alignment: .trailing, spacing: 4) {
                Text(mission.status)
                    .font(.system(size: 12, weight: .black, design: .rounded))
                    .foregroundStyle(mission.color)
                Text("\(Int(mission.confidence * 100))%")
                    .font(.system(size: 19, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
            }
        }
        .padding(15)
        .background(isSelected ? mission.color.opacity(0.11) : .white, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24, style: .continuous).stroke(isSelected ? mission.color.opacity(0.55) : Palette.line, lineWidth: 1))
    }
}

struct NextMoveCard: View {
    let bet: FutureBet

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Label("Next small move", systemImage: "paperplane.fill")
                    .font(.system(size: 14, weight: .black, design: .rounded))
                    .foregroundStyle(bet.color)
                Spacer()
                Text("\(bet.score)")
                    .font(.system(size: 24, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
            }

            Text(bet.title)
                .font(.system(size: 24, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)

            Text(bet.promise)
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .lineSpacing(3)
                .foregroundStyle(Palette.muted)

            HStack(spacing: 10) {
                Pill(text: bet.kind, color: bet.color)
                Pill(text: "48-hour test", color: Palette.teal)
            }
        }
        .padding(18)
        .background(.white, in: RoundedRectangle(cornerRadius: 28, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct SignalFeedView: View {
    @State private var selectedMission = missions[0]

    var body: some View {
        NavigationStack {
            ZStack {
                HappyBackground()

                ScrollView {
                    VStack(alignment: .leading, spacing: 18) {
                        PageTitle(kicker: "SIGNALS", title: "What is changing")

                        MissionSelector(selectedMission: $selectedMission)

                        ForEach(selectedMission.signals) { signal in
                            SignalDiscoveryCard(signal: signal)
                        }

                        SignalExplainer()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 18)
                    .padding(.bottom, 96)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct MissionSelector: View {
    @Binding var selectedMission: SensingMission

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(missions) { mission in
                    Button {
                        withAnimation(.spring(response: 0.35, dampingFraction: 0.85)) {
                            selectedMission = mission
                        }
                    } label: {
                        HStack(spacing: 8) {
                            Image(systemName: mission.icon)
                            Text(mission.outcome)
                                .lineLimit(1)
                        }
                        .font(.system(size: 13, weight: .black, design: .rounded))
                        .foregroundStyle(selectedMission.id == mission.id ? .white : Palette.ink)
                        .padding(.horizontal, 13)
                        .padding(.vertical, 10)
                        .background(selectedMission.id == mission.id ? mission.color : .white, in: Capsule())
                        .overlay(Capsule().stroke(Palette.line, lineWidth: selectedMission.id == mission.id ? 0 : 1))
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct SignalDiscoveryCard: View {
    let signal: SenseSignal

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .top, spacing: 13) {
                Image(systemName: signal.icon)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(signal.color)
                    .frame(width: 48, height: 48)
                    .background(signal.color.opacity(0.13), in: RoundedRectangle(cornerRadius: 17, style: .continuous))

                VStack(alignment: .leading, spacing: 6) {
                    Text(signal.title)
                        .font(.system(size: 22, weight: .black, design: .rounded))
                        .foregroundStyle(Palette.ink)
                    Text(signal.plainRead)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .lineSpacing(3)
                        .foregroundStyle(Palette.muted)
                }

                Spacer(minLength: 0)
            }

            EvidenceBox(title: "Receipts", text: signal.evidence, color: signal.color)
            EvidenceBox(title: "Why it is early", text: signal.whyEarly, color: Palette.sun)

            HStack {
                HStack(spacing: 7) {
                    Image(systemName: "clock.fill")
                    Text(signal.freshness)
                }
                .font(.system(size: 12, weight: .black, design: .rounded))
                .foregroundStyle(Palette.muted)

                Spacer()

                Text("Momentum \(Int(signal.momentum * 100))")
                    .font(.system(size: 12, weight: .black, design: .rounded))
                    .foregroundStyle(signal.color)
            }

            FlowChips(items: signal.sources, color: signal.color)
        }
        .padding(17)
        .background(.white, in: RoundedRectangle(cornerRadius: 28, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct EvidenceBox: View {
    let title: String
    let text: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.system(size: 12, weight: .black, design: .rounded))
                .tracking(0.7)
                .foregroundStyle(color)
            Text(text)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .lineSpacing(3)
                .foregroundStyle(Palette.ink.opacity(0.78))
        }
        .padding(13)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(color.opacity(0.10), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
    }
}

struct SignalExplainer: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("A signal is not a trend.")
                .font(.system(size: 20, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)
            Text("Antenna looks for repeated tiny behaviors, new words, complaints, workarounds, and cross-scene patterns before they turn into obvious demand.")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .lineSpacing(4)
                .foregroundStyle(Palette.muted)
        }
        .padding(18)
        .background(Palette.paperWarm, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24, style: .continuous).stroke(Palette.sun.opacity(0.36), lineWidth: 1))
    }
}

struct BetBoardView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                HappyBackground()

                ScrollView {
                    VStack(alignment: .leading, spacing: 18) {
                        PageTitle(kicker: "MOVES", title: "Try one small thing")

                        MoveSummary()

                        ForEach(missions) { mission in
                            FutureBetCard(mission: mission)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 18)
                    .padding(.bottom, 96)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct MoveSummary: View {
    var body: some View {
        HStack(spacing: 12) {
            SummaryTile(value: "4", label: "bets", color: Palette.sky)
            SummaryTile(value: "2", label: "easy tests", color: Palette.lime)
            SummaryTile(value: "48h", label: "timebox", color: Palette.coral)
        }
    }
}

struct SummaryTile: View {
    let value: String
    let label: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(value)
                .font(.system(size: 28, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)
            Text(label)
                .font(.system(size: 12, weight: .black, design: .rounded))
                .foregroundStyle(color)
        }
        .padding(15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white, in: RoundedRectangle(cornerRadius: 22, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 22, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct FutureBetCard: View {
    let mission: SensingMission

    var body: some View {
        let bet = mission.bet

        VStack(alignment: .leading, spacing: 15) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    Pill(text: bet.kind, color: bet.color)
                    Text(bet.title)
                        .font(.system(size: 26, weight: .black, design: .rounded))
                        .foregroundStyle(Palette.ink)
                        .lineLimit(3)
                        .minimumScaleFactor(0.82)
                    Text(bet.promise)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .lineSpacing(3)
                        .foregroundStyle(Palette.muted)
                }

                Spacer(minLength: 12)

                VStack(spacing: 0) {
                    Text("\(bet.score)")
                        .font(.system(size: 31, weight: .black, design: .rounded))
                        .foregroundStyle(bet.color)
                    Text("fit")
                        .font(.system(size: 12, weight: .black, design: .rounded))
                        .foregroundStyle(Palette.muted)
                }
            }

            VStack(spacing: 10) {
                BetLine(icon: "timer", label: "Smallest test", text: bet.smallestTest, color: Palette.sky)
                BetLine(icon: "checkmark.seal.fill", label: "Proof", text: bet.proof, color: Palette.lime)
            }

            Text(mission.prompt)
                .font(.system(size: 13, weight: .bold, design: .rounded))
                .foregroundStyle(Palette.muted)
                .padding(.top, 2)
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(.white)
                .shadow(color: bet.color.opacity(0.10), radius: 18, y: 8)
        )
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous).stroke(bet.color.opacity(0.22), lineWidth: 1))
    }
}

struct BetLine: View {
    let icon: String
    let label: String
    let text: String
    let color: Color

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(color)
                .frame(width: 34, height: 34)
                .background(color.opacity(0.12), in: RoundedRectangle(cornerRadius: 12, style: .continuous))

            VStack(alignment: .leading, spacing: 4) {
                Text(label)
                    .font(.system(size: 13, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
                Text(text)
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .lineSpacing(3)
                    .foregroundStyle(Palette.muted)
            }

            Spacer(minLength: 0)
        }
    }
}

struct ReceiptsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                HappyBackground()

                ScrollView {
                    VStack(alignment: .leading, spacing: 18) {
                        PageTitle(kicker: "RECEIPTS", title: "Trust the trail")

                        ReceiptsHero()

                        SectionHeader(title: "Source stack", detail: "live")

                        VStack(spacing: 12) {
                            ForEach(sourceStack) { source in
                                SourceStackRow(source: source)
                            }
                        }

                        SectionHeader(title: "What Antenna extracts", detail: "plain language")
                        ExtractionGrid()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 18)
                    .padding(.bottom, 96)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ReceiptsHero: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Image(systemName: "doc.text.magnifyingglass")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(Palette.sky)
                    .frame(width: 58, height: 58)
                    .background(Palette.sky.opacity(0.13), in: RoundedRectangle(cornerRadius: 20, style: .continuous))

                Spacer()

                Text("Run 021")
                    .font(.system(size: 13, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.muted)
            }

            Text("3,842 artifacts scanned")
                .font(.system(size: 31, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)
            Text("Antenna keeps every insight tied to source trails, freshness, repeated language, and your own judgment history.")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .lineSpacing(4)
                .foregroundStyle(Palette.muted)

            HStack(spacing: 10) {
                Pill(text: "112 signals", color: Palette.sky)
                Pill(text: "17 early", color: Palette.sun)
                Pill(text: "4 moves", color: Palette.lime)
            }
        }
        .padding(18)
        .background(.white, in: RoundedRectangle(cornerRadius: 28, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 28, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct SourceStackRow: View {
    let source: SourceStackItem

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: source.icon)
                .font(.system(size: 19, weight: .bold))
                .foregroundStyle(source.color)
                .frame(width: 48, height: 48)
                .background(source.color.opacity(0.13), in: RoundedRectangle(cornerRadius: 17, style: .continuous))

            VStack(alignment: .leading, spacing: 5) {
                Text(source.name)
                    .font(.system(size: 17, weight: .black, design: .rounded))
                    .foregroundStyle(Palette.ink)
                Text(source.role)
                    .font(.system(size: 13, weight: .semibold, design: .rounded))
                    .foregroundStyle(Palette.muted)
                Text(source.output)
                    .font(.system(size: 12, weight: .bold, design: .rounded))
                    .foregroundStyle(source.color)
            }

            Spacer(minLength: 8)

            Text(source.freshness)
                .font(.system(size: 12, weight: .black, design: .rounded))
                .foregroundStyle(source.color)
        }
        .padding(15)
        .background(.white, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24, style: .continuous).stroke(Palette.line, lineWidth: 1))
    }
}

struct ExtractionGrid: View {
    private let fields = [
        ("Questions", "questionmark.bubble.fill", Palette.sky),
        ("Complaints", "exclamationmark.bubble.fill", Palette.coral),
        ("New words", "text.quote", Palette.violet),
        ("Workarounds", "wrench.adjustable.fill", Palette.sun),
        ("Desires", "heart.fill", Palette.lime),
        ("Gaps", "square.split.2x2.fill", Palette.teal)
    ]

    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
            ForEach(fields, id: \.0) { field in
                HStack(spacing: 10) {
                    Image(systemName: field.1)
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(field.2)
                    Text(field.0)
                        .font(.system(size: 14, weight: .black, design: .rounded))
                        .foregroundStyle(Palette.ink)
                    Spacer()
                }
                .padding(14)
                .background(.white, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Palette.line, lineWidth: 1))
            }
        }
    }
}

struct PageTitle: View {
    let kicker: String
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(kicker)
                .font(.system(size: 13, weight: .black, design: .rounded))
                .tracking(2.0)
                .foregroundStyle(Palette.teal)
            Text(title)
                .font(.system(size: 34, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SectionHeader: View {
    let title: String
    let detail: String

    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 21, weight: .black, design: .rounded))
                .foregroundStyle(Palette.ink)
            Spacer()
            Text(detail)
                .font(.system(size: 13, weight: .black, design: .rounded))
                .foregroundStyle(Palette.muted)
        }
        .padding(.top, 4)
    }
}

struct FlowChips: View {
    let items: [String]
    let color: Color

    var body: some View {
        HStack(spacing: 8) {
            ForEach(items.prefix(4), id: \.self) { item in
                Pill(text: item, color: color)
            }
            Spacer(minLength: 0)
        }
    }
}

struct Pill: View {
    let text: String
    let color: Color

    var body: some View {
        Text(text)
            .font(.system(size: 12, weight: .black, design: .rounded))
            .lineLimit(1)
            .foregroundStyle(color)
            .padding(.horizontal, 11)
            .padding(.vertical, 7)
            .background(color.opacity(0.12), in: Capsule())
    }
}

struct HappyBackground: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Palette.paper, Color(red: 0.93, green: 0.985, blue: 1.0), Color(red: 1.0, green: 0.965, blue: 0.945)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Rectangle()
                    .fill(Palette.sky.opacity(0.10))
                    .frame(height: 150)
                    .rotationEffect(.degrees(-8))
                    .offset(x: -80, y: -80)
                Spacer()
                Rectangle()
                    .fill(Palette.sun.opacity(0.12))
                    .frame(height: 130)
                    .rotationEffect(.degrees(7))
                    .offset(x: 110, y: 70)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    AntennaRootView()
}
