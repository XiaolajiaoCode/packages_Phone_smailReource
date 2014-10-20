.class public Lcom/android/phone/ImsManageConferenceUtils;
.super Lcom/android/phone/ManageConferenceUtils;
.source "ImsManageConferenceUtils.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mUriListInConf:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;
    .param p2, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    .line 61
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ImsManageConferenceUtils;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ImsManageConferenceUtils;ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ImsManageConferenceUtils;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/Connection;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/ImsManageConferenceUtils;->endConferenceConnection(ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    return-void
.end method

.method private final displayCallerInfoForConferenceRow(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "nameTextView"    # Landroid/widget/TextView;
    .param p3, "numberTypeTextView"    # Landroid/widget/TextView;
    .param p4, "numberTextView"    # Landroid/widget/TextView;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 203
    const-string v0, ""

    .line 204
    .local v0, "callerName":Ljava/lang/String;
    const-string v1, ""

    .line 205
    .local v1, "callerNumber":Ljava/lang/String;
    const-string v2, ""

    .line 207
    .local v2, "callerNumberType":Ljava/lang/String;
    move-object v1, p1

    .line 209
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private endConferenceConnection(ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "connId":I
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/ImsManageConferenceUtils;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    if-eqz v2, :cond_1

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/ImsManageConferenceUtils;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    const/4 v3, 0x0

    invoke-interface {v2, v0, p3, v3}, Lorg/codeaurora/ims/IImsService;->hangupUri(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "ImsManageConferenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conn id for end is not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "ImsManageConferenceUtils"

    const-string v3, "Ims Service hangupUri exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateManageConferenceRow(ILcom/android/internal/telephony/Connection;ZLjava/lang/String;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p3, "canSeparate"    # Z
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 129
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f080018

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "endButton":Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 135
    .local v5, "separateButton":Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f080015

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 137
    .local v2, "nameTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f080016

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    .local v3, "numberTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const v7, 0x7f080017

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 143
    .local v4, "numberTypeTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/android/phone/ImsManageConferenceUtils$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/phone/ImsManageConferenceUtils$1;-><init>(Lcom/android/phone/ImsManageConferenceUtils;ILcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 150
    .local v1, "endThisConnection":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-direct {p0, p4, v2, v4, v3}, Lcom/android/phone/ImsManageConferenceUtils;->displayCallerInfoForConferenceRow(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 162
    .end local v0    # "endButton":Landroid/view/View;
    .end local v1    # "endThisConnection":Landroid/view/View$OnClickListener;
    .end local v2    # "nameTextView":Landroid/widget/TextView;
    .end local v3    # "numberTextView":Landroid/widget/TextView;
    .end local v4    # "numberTypeTextView":Landroid/widget/TextView;
    .end local v5    # "separateButton":Landroid/view/View;
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v6, v6, p1

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 78
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 79
    .local v0, "call":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 80
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 83
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 86
    iget-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v4, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    if-eqz v4, :cond_2

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v4, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    invoke-interface {v4}, Lorg/codeaurora/ims/IImsService;->getUriListinConf()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mUriListInConf:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mUriListInConf:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mUriListInConf:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 94
    const-string v4, "ImsManageConferenceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNumCallersInConference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 96
    iget v4, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v3, v4, :cond_1

    .line 98
    iget-object v4, p0, Lcom/android/phone/ImsManageConferenceUtils;->mUriListInConf:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/android/phone/ImsManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;ZLjava/lang/String;)V

    .line 95
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 90
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "ImsManageConferenceUtils"

    const-string v5, "Ims Service getUriListinConf exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v7}, Lcom/android/phone/ImsManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_2

    .line 108
    .end local v3    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 109
    :cond_3
    return-void
.end method
