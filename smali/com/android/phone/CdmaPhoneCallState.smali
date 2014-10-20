.class public Lcom/android/phone/CdmaPhoneCallState;
.super Ljava/lang/Object;
.source "CdmaPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    }
.end annotation


# instance fields
.field private mAddCallMenuStateAfterCW:Z

.field private mConferenceCallMerged:Z

.field private mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mThreeWayCallOrigStateDialing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public CdmaPhoneCallStateInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 80
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 81
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mConferenceCallMerged:Z

    .line 84
    return-void
.end method

.method public IsThreeWayCallOrigStateDialing()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    return v0
.end method

.method public getAddCallMenuStateAfterCallWaiting()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    return v0
.end method

.method public getConferenceCallMergedState()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mConferenceCallMerged:Z

    return v0
.end method

.method public getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method

.method public resetCdmaPhoneCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 169
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/CdmaPhoneCallState;->mConferenceCallMerged:Z

    .line 173
    return-void
.end method

.method public setAddCallMenuStateAfterCallWaiting(Z)V
    .locals 0
    .param p1, "newState"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 141
    return-void
.end method

.method public setConferenceCallMergedState(Z)V
    .locals 0
    .param p1, "newState"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mConferenceCallMerged:Z

    .line 162
    return-void
.end method

.method public setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 98
    iput-object p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 109
    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mCurrentCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mPreviousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaPhoneCallState;->mAddCallMenuStateAfterCW:Z

    .line 113
    :cond_0
    return-void
.end method

.method public setThreeWayCallOrigState(Z)V
    .locals 0
    .param p1, "newState"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/phone/CdmaPhoneCallState;->mThreeWayCallOrigStateDialing:Z

    .line 127
    return-void
.end method
