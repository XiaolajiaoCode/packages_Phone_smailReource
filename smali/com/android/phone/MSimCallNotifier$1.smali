.class Lcom/android/phone/MSimCallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallNotifier;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    iget v1, p0, Lcom/android/phone/MSimCallNotifier$1;->mSubscription:I

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/MSimCallNotifier;->onCfiChanged(ZI)V

    .line 194
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3
    .param p1, "mwi"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/MSimCallNotifier$1;->this$0:Lcom/android/phone/MSimCallNotifier;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimCallNotifier$1;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    # invokes: Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/MSimCallNotifier;->access$000(Lcom/android/phone/MSimCallNotifier;ZLcom/android/internal/telephony/Phone;)V

    .line 189
    return-void
.end method
