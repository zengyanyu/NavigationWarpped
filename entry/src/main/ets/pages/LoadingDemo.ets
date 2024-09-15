@Entry
@Component
struct LoadingDemo {
  @State
  value: number = 30;
  total: number = 100;
  @State
  timer: number = -1;
  @State
  angle: number = 30;

  aboutToAppear() {
  }

  aboutToDisappear(): void {
    // 清空定时器
    clearInterval(this.timer)
  }

  setIntervalMethod() {
    this.timer = setInterval(() => {
      this.value += 10;
      this.angle += 10;
      if (this.value === 100) {
        this.value = 0;
        this.angle = 0;
      }
    }, 100)
  }

  build() {
    Column() {
      Progress({
        value: this.value,
        total: this.total,
        type: ProgressType.Ring
      }).style({
        strokeWidth: 10
      })
        .rotate({
          angle: this.angle
        })
        .onAppear(() => {
          this.setIntervalMethod();
        })
    }
    /*主轴居中*/
    .justifyContent(FlexAlign.Center)
    /*辅轴居中*/
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}