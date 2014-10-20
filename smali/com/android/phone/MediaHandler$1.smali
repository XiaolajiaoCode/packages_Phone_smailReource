.class Lcom/android/phone/MediaHandler$1;
.super Landroid/view/OrientationEventListener;
.source "MediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MediaHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/MediaHandler;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/MediaHandler$1;->this$0:Lcom/android/phone/MediaHandler;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/phone/MediaHandler$1;->this$0:Lcom/android/phone/MediaHandler;

    # invokes: Lcom/android/phone/MediaHandler;->calculateDeviceOrientation(I)I
    invoke-static {v1, p1}, Lcom/android/phone/MediaHandler;->access$000(Lcom/android/phone/MediaHandler;I)I

    move-result v0

    .line 87
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/android/phone/MediaHandler$1;->this$0:Lcom/android/phone/MediaHandler;

    # invokes: Lcom/android/phone/MediaHandler;->detectOrientationChangedAndSendCvo(I)V
    invoke-static {v1, v0}, Lcom/android/phone/MediaHandler;->access$100(Lcom/android/phone/MediaHandler;I)V

    .line 88
    return-void
.end method
