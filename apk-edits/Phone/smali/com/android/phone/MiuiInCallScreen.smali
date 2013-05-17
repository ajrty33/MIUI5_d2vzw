.class public Lcom/android/phone/MiuiInCallScreen;
.super Lcom/android/phone/InCallScreen;
.source "MiuiInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallScreen$Handler;
    }
.end annotation


# instance fields
.field private mCallRecorder:Landroid/media/MediaRecorder;

.field private mCurrentRecordDisplayFileName:Ljava/lang/String;

.field private mCurrentRecordFileName:Ljava/lang/String;

.field private mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 85
    new-instance v0, Lcom/android/phone/MiuiInCallScreen$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallScreen$Handler;-><init>(Lcom/android/phone/MiuiInCallScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    return-void
.end method

.method private canRecordCallNow()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCallEndedDisplayDelay(Lcom/android/internal/telephony/Connection$DisconnectCause;)I
    .locals 3
    .parameter "cause"

    .prologue
    .line 201
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 202
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p0, v1, :cond_1

    const/16 v0, 0x14

    .line 211
    .local v0, delay:I
    :cond_0
    :goto_0
    return v0

    .line 202
    .end local v0           #delay:I
    :cond_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 205
    :cond_2
    const/16 v0, 0xc8

    .line 206
    .restart local v0       #delay:I
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0xfa0

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v0, 0x7d0

    goto :goto_1
.end method

.method private getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, name:Ljava/lang/String;
    const-string v2, "\\\\|\\/|:|\\*|\\?|\"|<|>|\\||;|&|!|\\[|\\]|\'|`|\\(|\\)|\\{|\\}"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onContactClick()V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method private onNoteClick()V
    .locals 8

    .prologue
    .line 316
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 317
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v7, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, number:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 329
    const-string v6, "number is null when record through note"

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 332
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 334
    .local v1, date:J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v5, sendIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    const-string v6, "vnd.android.cursor.item/call_note"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    if-nez v4, :cond_2

    const-string v4, ""

    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v6, "com.miui.notes.call_date"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 340
    iget-object v6, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v6, Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v6, v5}, Lcom/android/phone/MiuiPhoneApp;->setIntentAfterCall(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v5           #sendIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 342
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "MiuiInCallScreen"

    const-string v7, "Note activity not found "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startCallRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 360
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->canRecordCallNow()Z

    move-result v8

    if-nez v8, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    if-nez v8, :cond_2

    .line 365
    new-instance v8, Lcom/android/phone/MiuiStorageMonitor;

    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-direct {v8, v9}, Lcom/android/phone/MiuiStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    .line 368
    :cond_2
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    new-instance v9, Lcom/android/phone/MiuiInCallScreen$1;

    invoke-direct {v9, p0}, Lcom/android/phone/MiuiInCallScreen$1;-><init>(Lcom/android/phone/MiuiInCallScreen;)V

    invoke-virtual {v8, v9}, Lcom/android/phone/MiuiStorageMonitor;->startMonitor(Lcom/android/phone/MiuiStorageMonitor$Listener;)I

    move-result v3

    .line 375
    .local v3, error:I
    if-eqz v3, :cond_6

    .line 376
    if-ne v3, v11, :cond_3

    .line 377
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 378
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v9, 0x7f0d0275

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 385
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v8, :cond_4

    .line 386
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v8, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v8}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 388
    :cond_4
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v9, 0x60c01a7

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 392
    :cond_6
    const-string v6, "/MIUI/sound_recorder/call_rec"

    .line 393
    .local v6, recordPathOfMIUI:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v7, sampleDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    .line 398
    const/16 v8, 0x1ff

    invoke-static {v7, v8, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v8

    if-nez v8, :cond_9

    .line 399
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v9, 0x7f0d0274

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 401
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v8, :cond_7

    .line 402
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v8, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v8}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 404
    :cond_7
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    goto/16 :goto_0

    .line 393
    .end local v7           #sampleDir:Ljava/io/File;
    :cond_8
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 409
    .restart local v7       #sampleDir:Ljava/io/File;
    :cond_9
    const-string v8, "start CallRecord!"

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 410
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-nez v8, :cond_a

    .line 411
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 413
    :cond_a
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->reset()V

    .line 414
    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 415
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 419
    :goto_3
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 420
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 422
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v1, callers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 424
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 442
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #callers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 443
    .local v2, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->reset()V

    .line 444
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->release()V

    .line 445
    iput-object v12, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 446
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v8, :cond_b

    .line 447
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v8, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v8}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 449
    :cond_b
    iput-object v12, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 450
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 453
    .end local v2           #e:Ljava/lang/Exception;
    :goto_5
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v8}, Lcom/android/phone/MiuiStorageMonitor;->isUsingExternalStorage()Z

    move-result v8

    if-nez v8, :cond_0

    .line 454
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v9, 0x60c01a9

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 417
    :cond_c
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_3

    .line 426
    .restart local v1       #callers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 427
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 430
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_e
    new-instance v5, Ljava/io/File;

    invoke-static {p0, v1}, Lmiui/util/RecorderNameUtils;->generatCallRecordName(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    .local v5, recordFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v10, 0x7f0d0276

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordDisplayFileName:Ljava/lang/String;

    .line 434
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 435
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->prepare()V

    .line 436
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->start()V

    .line 437
    const-string v8, "CallRecord is started!"

    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 438
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v8, :cond_f

    .line 439
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v8, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v8}, Lcom/android/phone/MiuiInCallTouchUi;->onStartCallRecord()V

    .line 441
    :cond_f
    iget-object v8, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v8, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/MiuiNotificationMgr;->notifyCallRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private stopCallRecord()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V

    .line 469
    return-void
.end method

.method private stopCallRecord(I)V
    .locals 11
    .parameter "errorCode"

    .prologue
    const/16 v10, 0x1ff

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 472
    const-string v1, "stop CallRecord!"

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_5

    .line 474
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 475
    .local v0, mr:Landroid/media/MediaRecorder;
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mStorageMonitor:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v1}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 476
    new-instance v1, Lcom/android/phone/MiuiInCallScreen$2;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/MiuiInCallScreen$2;-><init>(Lcom/android/phone/MiuiInCallScreen;Landroid/media/MediaRecorder;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiInCallScreen$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 484
    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 485
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v1, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v1}, Lcom/android/phone/MiuiInCallTouchUi;->onStopCallRecord()V

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v1, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/MiuiNotificationMgr;->cancelCallRecord()V

    .line 489
    if-nez p1, :cond_3

    .line 490
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_call_recording_notification"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v1, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d0270

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordDisplayFileName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v1, v7, v2, v3}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v1, v10, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 507
    :cond_2
    :goto_0
    iput-object v9, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 511
    .end local v0           #mr:Landroid/media/MediaRecorder;
    :goto_1
    return-void

    .line 497
    .restart local v0       #mr:Landroid/media/MediaRecorder;
    :cond_3
    if-ne p1, v7, :cond_4

    .line 498
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v1, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d026f

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v1, v10, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 502
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v1, Lcom/android/phone/MiuiNotificationMgr;

    iget-object v2, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d0271

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2, v9}, Lcom/android/phone/MiuiNotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v0           #mr:Landroid/media/MediaRecorder;
    :cond_5
    const-string v1, "CallRecord is stopped already!"

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected closeDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method protected createDTMFTwelveKeyDialer(Landroid/view/ViewStub;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1
    .parameter "stub"

    .prologue
    .line 110
    new-instance v0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Landroid/view/ViewStub;)V

    return-object v0
.end method

.method protected createInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/android/phone/MiuiInCallControlState;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/phone/MiuiManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    return-object v0
.end method

.method protected createRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/phone/MiuiRespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/MiuiRespondViaSmsManager;-><init>()V

    return-object v0
.end method

.method protected endInCallScreenSession(Z)V
    .locals 1
    .parameter "forceFinish"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->dismissAllDialogs()V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    .line 178
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    .line 161
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 162
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f040022

    return v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 302
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 304
    :goto_0
    return-void

    .line 278
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onNoteClick()V

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    goto :goto_0

    .line 287
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->onContactClick()V

    goto :goto_0

    .line 290
    :pswitch_5
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 293
    :pswitch_6
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 296
    :pswitch_7
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 299
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->toggleSpeaker()V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800a2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 2
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 216
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 217
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v1, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiCallCard;->updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    .line 221
    return-void
.end method

.method isCallRecording()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRespondViaSmsDialogShowing()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    check-cast v0, Lcom/android/phone/MiuiRespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/MiuiRespondViaSmsManager;->isShowingPopupDialog()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothAvailabilityChanged()V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 520
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    const v2, 0x10100

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 123
    return-void
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->stopCallRecord()V

    .line 252
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->resetPanelState()V

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 258
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup()V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->updateInCallTouchUi()V

    .line 529
    :cond_1
    return-void
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x191

    .line 225
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallScreen;->canRecordCallNow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v3, Lcom/android/phone/MiuiInCallTouchUi;

    invoke-virtual {v3}, Lcom/android/phone/MiuiInCallTouchUi;->isStartCallRecordingRequestPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 246
    return-void

    .line 228
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_auto_record_call"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_auto_record_scenario"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, autoRecordScenarioIndex:I
    if-nez v0, :cond_2

    .line 232
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 235
    .local v1, latestConnection:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v2}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/phone/MiuiInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onStart()V

    .line 130
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_incall_screen_background"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    .local v0, showScreen:Z
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiInCallScreen;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarBackground(Z)V

    .line 145
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarBackground(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/android/phone/InCallScreen;->onStop()V

    .line 156
    return-void
.end method

.method protected openDialpadInternal(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method protected updateCallCardVisibilityPerDialerState(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallScreen;->closeDialpadInternal(Z)V

    .line 169
    :cond_0
    return-void
.end method
