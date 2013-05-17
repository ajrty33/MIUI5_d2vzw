.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/android/phone/PhoneApp;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field protected mDensity:F
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mElapsedTime:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoDimEffect:Landroid/view/View;

.field protected mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mProviderAddress:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/ViewGroup;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private mSecondaryInfoContainer:Landroid/view/ViewGroup;

.field private mTextColorCallTypeSip:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 193
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 195
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 198
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1735
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1736
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1737
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1739
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1740
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 459
    if-nez p2, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 469
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 522
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 528
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 639
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 474
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_1

    .line 482
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 488
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 495
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 502
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 511
    :pswitch_5
    const-string v2, "CallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 534
    :cond_2
    const/4 v7, 0x0

    .line 535
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 536
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 537
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 545
    :goto_3
    if-nez v7, :cond_6

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 552
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 538
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 540
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 542
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 559
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 560
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 561
    .local v14, o:Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 570
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 571
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 572
    .local v15, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 573
    .local v20, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v19

    .line 574
    .local v19, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 575
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_b

    move-object v2, v14

    .line 576
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 581
    :cond_7
    :goto_5
    if-eqz v3, :cond_9

    .line 582
    if-eqz v20, :cond_8

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 585
    const/16 v17, 0x1

    .line 587
    :cond_8
    if-eqz v19, :cond_9

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 590
    const/16 v17, 0x1

    .line 595
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_d

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 599
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_c

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 565
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_4

    .line 577
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v19       #updatedCnapName:Ljava/lang/String;
    .restart local v20       #updatedNumber:Ljava/lang/String;
    :cond_b
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object v3, v14

    .line 578
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_5

    .line 599
    .end local v15           #obj:Ljava/lang/Object;
    .end local v19           #updatedCnapName:Ljava/lang/String;
    .end local v20           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 606
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_e

    move-object v9, v14

    .line 607
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 609
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 610
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 611
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 616
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 617
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_f

    .line 618
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 623
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 625
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_f
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    const/4 v9, 0x2

    const v11, 0x7f0200f5

    const/16 v10, 0x8

    .line 953
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 954
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1066
    :goto_0
    return-void

    .line 958
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 959
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1063
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 967
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 969
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 971
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d001b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v8, 0x7f0200f1

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 997
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, p2, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 980
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_3

    .line 991
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_1

    .line 993
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1004
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 1005
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1007
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1008
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 1013
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d014a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1056
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1019
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1020
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, v0, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1026
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1028
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1030
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_5

    iget v7, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v8, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v7, v8, :cond_5

    .line 1032
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1034
    const/4 v2, 0x1

    .line 1036
    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    if-nez v2, :cond_6

    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_6

    .line 1045
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_2

    .line 1047
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 1052
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    const-string v7, "CallCard"

    const-string v8, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    .line 959
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1621
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    :goto_0
    const v1, 0x7f0d014b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1629
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    const v0, 0x7f0d0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1580
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1586
    :goto_0
    const/4 v0, 0x1

    .line 1588
    :goto_1
    return v0

    .line 1584
    :cond_0
    const v0, 0x7f0200f5

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1588
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1593
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1594
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1597
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1598
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1602
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1603
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1605
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1607
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1609
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1614
    :goto_0
    return-void

    .line 1611
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1612
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1072
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1075
    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1078
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1079
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1084
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 427
    iget-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 434
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 435
    return-void
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 326
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 336
    .local v2, ringing:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 337
    .local v1, reservedVerticalSpace:I
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 339
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 342
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    return-void

    .line 326
    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #reservedVerticalSpace:I
    .end local v2           #ringing:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    .line 755
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 756
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 757
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 758
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 760
    .local v6, phoneType:I
    const/4 v1, 0x0

    .line 761
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 763
    .local v0, bluetoothIconId:I
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 809
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 816
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 820
    const v9, 0x7f0d0143

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 825
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 828
    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 831
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v9, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 842
    .local v3, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9

    :cond_3
    const/4 v7, 0x1

    .line 845
    .local v7, skipAnimation:Z
    :goto_2
    const/4 v4, 0x0

    .line 846
    .local v4, layoutTransition:Landroid/animation/LayoutTransition;
    if-eqz v7, :cond_4

    .line 848
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 849
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 852
    :cond_4
    iget-boolean v9, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v9, :cond_a

    .line 853
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 854
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    const v10, 0x7f0d01a3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 863
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 864
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    if-eqz v0, :cond_b

    .line 869
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 870
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v11, 0x40a0

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 878
    :goto_4
    if-eqz v7, :cond_5

    .line 880
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 884
    :cond_5
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 907
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 914
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_7

    .line 915
    :cond_6
    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 920
    :cond_7
    :goto_5
    return-void

    .line 774
    .end local v3           #inCallUiState:Lcom/android/phone/InCallUiState;
    .end local v4           #layoutTransition:Landroid/animation/LayoutTransition;
    .end local v7           #skipAnimation:Z
    :pswitch_2
    const v9, 0x7f0d0148

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    goto/16 :goto_0

    .line 779
    :pswitch_3
    const v9, 0x7f0d0143

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 780
    goto/16 :goto_0

    .line 784
    :pswitch_4
    const v9, 0x7f0d0146

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 789
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 790
    const v0, 0x7f020092

    goto/16 :goto_0

    .line 801
    :pswitch_5
    const v9, 0x7f0d0149

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    goto/16 :goto_0

    .line 805
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 806
    goto/16 :goto_0

    .line 821
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 822
    const v9, 0x7f0d0144

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 842
    .restart local v3       #inCallUiState:Lcom/android/phone/InCallUiState;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 860
    .restart local v4       #layoutTransition:Landroid/animation/LayoutTransition;
    .restart local v7       #skipAnimation:Z
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 873
    :cond_b
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 876
    :cond_c
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 888
    :pswitch_7
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_5

    .line 897
    :pswitch_8
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_7

    .line 898
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 884
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1643
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1644
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1647
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1655
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1643
    goto :goto_0

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 1397
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1398
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1406
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1419
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1441
    return-void

    .line 1407
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1414
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d0145

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1416
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1198
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1202
    const/4 v2, 0x0

    .line 1203
    const/4 v1, 0x0

    .line 1204
    const/4 v0, 0x0

    .line 1208
    if-eqz p1, :cond_8

    .line 1231
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1232
    if-eqz v0, :cond_0

    const-string v3, "sip:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1233
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1245
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 1299
    :goto_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    .line 1306
    :goto_1
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1307
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v4, 0x7f0d014a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1311
    :goto_2
    iget-object v3, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1323
    if-eqz p3, :cond_a

    if-eqz p1, :cond_1

    iget-boolean v3, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v3, :cond_a

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1362
    :cond_2
    :goto_3
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_d

    .line 1363
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1368
    :goto_4
    if-eqz v2, :cond_e

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1369
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1375
    :goto_5
    if-eqz v1, :cond_f

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1376
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    :goto_6
    invoke-direct {p0, p4}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1385
    return-void

    .line 1247
    :cond_3
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v3, :cond_4

    .line 1251
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    .line 1253
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1255
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1256
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1257
    goto/16 :goto_0

    .line 1271
    :cond_5
    if-eqz p5, :cond_10

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1275
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1284
    :cond_6
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v3, :cond_7

    .line 1288
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1292
    :cond_7
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1294
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1303
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1309
    :cond_9
    iget-object v4, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1326
    :cond_a
    if-eqz p1, :cond_b

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v3, :cond_b

    .line 1327
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1328
    :cond_b
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v3, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1329
    if-nez v0, :cond_c

    .line 1330
    const-string v0, "CallCard"

    const-string v3, "personPri is null. Just use Unknown picture."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f0200f5

    invoke-static {v0, v3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1332
    :cond_c
    iget-object v3, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1341
    iput-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1344
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1346
    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v5, v6, p1, p4}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v3, v4, v0, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1365
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 1372
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1379
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 353
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 355
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 363
    move-object v1, v0

    .line 366
    const/4 v0, 0x0

    .line 369
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 371
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 373
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 374
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 375
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 384
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 386
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 450
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 1455
    const/4 v1, 0x0

    .line 1459
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1460
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1504
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1505
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1513
    :goto_0
    if-eqz v0, :cond_a

    .line 1514
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1515
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_6

    .line 1516
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 1523
    :goto_1
    if-eqz v2, :cond_9

    .line 1524
    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1535
    :goto_2
    if-nez v0, :cond_8

    .line 1536
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 1540
    if-nez v1, :cond_7

    .line 1541
    const-string v1, "CallCard"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f0200f5

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1554
    :goto_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1566
    :cond_0
    :goto_4
    if-eqz v0, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1570
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1572
    :cond_1
    :goto_5
    return-void

    .line 1465
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_b

    .line 1469
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1470
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_b

    .line 1472
    :cond_2
    const v0, 0x7f0200f0

    goto :goto_4

    .line 1506
    :cond_3
    if-eq v0, v9, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1508
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1510
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1517
    :cond_6
    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 1518
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto/16 :goto_1

    .line 1547
    :cond_7
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1549
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v4, v1, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_3

    .line 1559
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1560
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v2, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_4

    .line 1460
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 400
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 406
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 407
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1713
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1715
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1731
    :cond_0
    :goto_0
    return v2

    .line 1719
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1720
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1721
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1722
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1723
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1725
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1726
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1728
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1098
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1101
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1105
    const v2, 0x7f0d0147

    .line 1178
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1108
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1114
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1174
    const v2, 0x7f0d0147

    .restart local v2       #resID:I
    goto :goto_0

    .line 1116
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0d0008

    .line 1117
    .restart local v2       #resID:I
    goto :goto_0

    .line 1120
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0d0009

    .line 1121
    .restart local v2       #resID:I
    goto :goto_0

    .line 1124
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0d000a

    .line 1125
    .restart local v2       #resID:I
    goto :goto_0

    .line 1128
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0d000b

    .line 1129
    .restart local v2       #resID:I
    goto :goto_0

    .line 1132
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0d000c

    .line 1133
    .restart local v2       #resID:I
    goto :goto_0

    .line 1136
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0d000d

    .line 1137
    .restart local v2       #resID:I
    goto :goto_0

    .line 1140
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0d000f

    .line 1141
    .restart local v2       #resID:I
    goto :goto_0

    .line 1144
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0d000e

    .line 1145
    .restart local v2       #resID:I
    goto :goto_0

    .line 1149
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0d0010

    .line 1150
    .restart local v2       #resID:I
    goto :goto_0

    .line 1153
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0d0011

    .line 1154
    .restart local v2       #resID:I
    goto :goto_0

    .line 1157
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0d0012

    .line 1158
    .restart local v2       #resID:I
    goto :goto_0

    .line 1161
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0d0013

    .line 1162
    .restart local v2       #resID:I
    goto :goto_0

    .line 1165
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0d0014

    .line 1166
    .restart local v2       #resID:I
    goto :goto_0

    .line 1170
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0d001a

    .line 1171
    .restart local v2       #resID:I
    goto :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1694
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1695
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1696
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 225
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 226
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 227
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 229
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 230
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 231
    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 240
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 241
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    .line 243
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 251
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 711
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 718
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 723
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 725
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 726
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 727
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 728
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 730
    .local v1, call:Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 731
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 732
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 736
    if-eqz p2, :cond_2

    .line 737
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 744
    :goto_1
    if-nez p1, :cond_0

    .line 745
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 747
    :cond_0
    return-void

    .line 721
    .end local v0           #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_1
    const-string v4, "CallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    .restart local v0       #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_2
    if-eqz p3, :cond_3

    .line 739
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 741
    :cond_3
    const v4, 0x7f0200f5

    invoke-static {v3, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 665
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    move-object v4, p2

    .line 670
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 671
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 672
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 673
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 674
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 681
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 684
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 685
    .local v2, presentation:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 692
    :cond_0
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 693
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 697
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 703
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 675
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 677
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 679
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 699
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 701
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 213
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 206
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 1703
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 1704
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 1705
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1094
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 217
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 929
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 930
    .local v0, duration:J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 933
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 263
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 264
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 265
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 268
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/Phone$State;)V

    .line 275
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 319
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v4, :cond_3

    .line 302
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
