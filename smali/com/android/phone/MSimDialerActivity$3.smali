.class Lcom/android/phone/MSimDialerActivity$3;
.super Ljava/lang/Object;
.source "MSimDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimDialerActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    # getter for: Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/MSimDialerActivity;->access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity$3;->this$0:Lcom/android/phone/MSimDialerActivity;

    const/4 v1, 0x2

    # invokes: Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MSimDialerActivity;->access$100(Lcom/android/phone/MSimDialerActivity;I)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x7f080029
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
