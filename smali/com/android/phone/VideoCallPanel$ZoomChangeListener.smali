.class Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Lcom/android/phone/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/VideoCallPanel;
    .param p2, "x1"    # Lcom/android/phone/VideoCallPanel$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # invokes: Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/phone/VideoCallPanel;->access$000(Lcom/android/phone/VideoCallPanel;I)V

    .line 100
    return-void
.end method
