import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // 圆角示例
                VStack {
                    Text("圆角 cornerRadius")
                        .font(.headline)

                    HStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .overlay(Text("4").foregroundColor(.white))

                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .overlay(Text("8").foregroundColor(.white))

                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .overlay(Text("16").foregroundColor(.white))

                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .overlay(Text("30").foregroundColor(.white))
                    }
                }

                Divider()

                // 阴影示例
                VStack {
                    Text("阴影 shadow")
                        .font(.headline)

                    HStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 80, height: 60)
                            .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 2)
                            .overlay(Text("默认").font(.caption))

                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 80, height: 60)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
                            .overlay(Text("大阴影").font(.caption))

                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                            .frame(width: 80, height: 60)
                            .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 4)
                            .overlay(Text("彩色阴影").font(.caption))
                    }
                }

                Divider()

                // 组合效果
                VStack {
                    Text("卡片效果")
                        .font(.headline)

                    VStack(spacing: 20) {
                        // 普通卡片
                        VStack(alignment: .leading, spacing: 8) {
                            Text("普通卡片")
                                .font(.headline)
                            Text("这是一个普通的卡片效果")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .background(Color(nsColor: .controlBackgroundColor))
                        .cornerRadius(8)

                        // 带阴影的卡片
                        VStack(alignment: .leading, spacing: 8) {
                            Text("阴影卡片")
                                .font(.headline)
                            Text("这是一个带阴影的卡片")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .background(Color(nsColor: .controlBackgroundColor))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)

                        // 浮起效果
                        VStack(alignment: .leading, spacing: 8) {
                            Text("浮起效果")
                                .font(.headline)
                            Text("鼠标悬停时卡片会浮起")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
                    }
                    .padding()
                }

                Divider()

                // clipShape 示例
                VStack {
                    Text("clipShape 裁剪")
                        .font(.headline)

                    HStack(spacing: 20) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 60, height: 60)
                            .overlay(Image(systemName: "star.fill").foregroundColor(.white))

                        Capsule()
                            .fill(Color.green)
                            .frame(width: 100, height: 40)
                            .overlay(Text("胶囊").foregroundColor(.white))

                        Ellipse()
                            .fill(Color.orange)
                            .frame(width: 80, height: 50)
                            .overlay(Text("椭圆").foregroundColor(.white))
                    }
                }
            }
            .padding(30)
        }
    }
}
