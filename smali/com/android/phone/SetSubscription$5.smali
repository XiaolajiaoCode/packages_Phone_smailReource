.class Lcom/android/phone/SetSubscription$5;
.super Ljava/lang/Object;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SetSubscription;->displayErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method constructor <init>(Lcom/android/phone/SetSubscription;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/phone/SetSubscription$5;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 462
    const-string v0, "SetSubscription"

    const-string v1, "errorMutipleDeactivate:  onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/phone/SetSubscription$5;->this$0:Lcom/android/phone/SetSubscription;

    # invokes: Lcom/android/phone/SetSubscription;->updateCheckBoxes()V
    invoke-static {v0}, Lcom/android/phone/SetSubscription;->access$200(Lcom/android/phone/SetSubscription;)V

    .line 464
    return-void
.end method
