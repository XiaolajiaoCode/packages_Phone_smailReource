.class Lcom/android/phone/ImsManageConferenceUtils$1;
.super Ljava/lang/Object;
.source "ImsManageConferenceUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ImsManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ImsManageConferenceUtils;

.field final synthetic val$connection:Lcom/android/internal/telephony/Connection;

.field final synthetic val$i:I

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/ImsManageConferenceUtils;ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->this$0:Lcom/android/phone/ImsManageConferenceUtils;

    iput p2, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$i:I

    iput-object p3, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$connection:Lcom/android/internal/telephony/Connection;

    iput-object p4, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$uri:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->this$0:Lcom/android/phone/ImsManageConferenceUtils;

    iget v1, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$i:I

    iget-object v2, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$connection:Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/ImsManageConferenceUtils$1;->val$uri:Ljava/lang/String;

    # invokes: Lcom/android/phone/ImsManageConferenceUtils;->endConferenceConnection(ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ImsManageConferenceUtils;->access$000(Lcom/android/phone/ImsManageConferenceUtils;ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    .line 148
    return-void
.end method
