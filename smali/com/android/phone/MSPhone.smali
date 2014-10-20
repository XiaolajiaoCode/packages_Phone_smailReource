.class public Lcom/android/phone/MSPhone;
.super Ljava/lang/Object;
.source "MSPhone.java"


# instance fields
.field public mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field public mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field public mIsSimPinEnabled:Z

.field public mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field public mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/phone/MSPhone;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 74
    iput-object v2, p0, Lcom/android/phone/MSPhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 82
    iput-object v2, p0, Lcom/android/phone/MSPhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 83
    iput-object v2, p0, Lcom/android/phone/MSPhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 84
    iput-object v2, p0, Lcom/android/phone/MSPhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 85
    iput-object v2, p0, Lcom/android/phone/MSPhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 90
    invoke-static {p1}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    iget-object v1, p0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, "phoneIsCdma":Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/MSPhone;->initializeCdmaVariables()V

    .line 97
    :cond_0
    return-void

    .line 92
    .end local v0    # "phoneIsCdma":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initializeCdmaVariables()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 102
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 103
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 105
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_3

    .line 115
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSPhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 118
    :cond_3
    return-void
.end method
