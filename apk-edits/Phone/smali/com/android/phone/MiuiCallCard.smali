.class public Lcom/android/phone/MiuiCallCard;
.super Lcom/android/phone/CallCard;
.source "MiuiCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCallCard$4;,
        Lcom/android/phone/MiuiCallCard$CallCardInfo;
    }
.end annotation


# instance fields
.field private final STATE_DOUBLE_CALLS:I

.field private final STATE_NO_CALL:I

.field private final STATE_RINGING_CALL:I

.field private final STATE_SINGLE_CALL:I

.field private mCallCard:Landroid/widget/LinearLayout;

.field private mCallCardPhoto:Landroid/graphics/drawable/Drawable;

.field private mCallCardPhotoCache:Landroid/graphics/Bitmap;

.field private mCallStatus:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mConferenceManagerButton:Landroid/view/View;

.field private mDoubleCallsInfoBar:Landroid/view/View;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mExtraInfo:Landroid/widget/TextView;

.field private mFirstCallCard:Landroid/widget/LinearLayout;

.field private mFirstCallStatus:Landroid/widget/TextView;

.field private mFirstCallStatusImage:Landroid/widget/ImageView;

.field private mFirstCallTime:Lcom/android/phone/CallTime;

.field private mFirstConferenceManagerButton:Landroid/view/View;

.field private mFirstElapsedTime:Landroid/widget/TextView;

.field private mFirstName:Landroid/widget/TextView;

.field private mFirstPhoneNumber:Landroid/widget/TextView;

.field private mFirstTelocation:Landroid/widget/TextView;

.field private mInfoBar:Landroid/view/ViewGroup;

.field private mInfoBarMask:Landroid/view/View;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mScaledDensity:F

.field private mSecondCallCard:Landroid/widget/LinearLayout;

.field private mSecondCallStatus:Landroid/widget/TextView;

.field private mSecondCallStatusImage:Landroid/widget/ImageView;

.field private mSecondCallTime:Lcom/android/phone/CallTime;

.field private mSecondConferenceManagerButton:Landroid/view/View;

.field private mSecondElapsedTime:Landroid/widget/TextView;

.field private mSecondName:Landroid/widget/TextView;

.field private mSecondPhoneNumber:Landroid/widget/TextView;

.field private mSecondTelocation:Landroid/widget/TextView;

.field private mState:I

.field private mTelocation:Landroid/widget/TextView;

.field private mTelocationMaxWidthWithPhoto:I

.field private mTelocationMaxWidthWithoutPhoto:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_NO_CALL:I

    .line 109
    iput v1, p0, Lcom/android/phone/MiuiCallCard;->STATE_RINGING_CALL:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_SINGLE_CALL:I

    .line 111
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_DOUBLE_CALLS:I

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 134
    .local v6, metrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mScaledDensity:F

    .line 136
    const/high16 v0, 0x428c

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    .line 137
    const/high16 v0, 0x4334

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    .line 139
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0f002f

    invoke-direct {v7, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 140
    .local v7, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0f0032

    invoke-direct {v8, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v8, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/phone/MiuiCallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 7
    .parameter "call"
    .parameter "callerInfo"

    .prologue
    const/4 v6, 0x0

    .line 528
    new-instance v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 529
    .local v0, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    if-eqz p2, :cond_0

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v2, v3, :cond_1

    .line 533
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0367

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 537
    :goto_0
    const-string v2, ""

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 571
    :cond_0
    :goto_1
    return-object v0

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0368

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_2
    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v2, :cond_4

    .line 542
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 556
    :cond_3
    :goto_2
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 557
    const-string v2, ""

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 567
    :goto_3
    invoke-static {p2}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 568
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v2, v2, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    goto :goto_1

    .line 543
    :cond_4
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-boolean v2, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_5

    .line 545
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 546
    :cond_5
    iget-wide v2, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, p2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, p2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 548
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 550
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 552
    .local v1, personUri:Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallCard$AsyncLoadCookie;

    invoke-direct {v4, v6, p2, p1}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v2, v3, v1, p0, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 558
    .end local v1           #personUri:Landroid/net/Uri;
    :cond_6
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 559
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 560
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 561
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 564
    :cond_8
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3
.end method

.method private createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 148
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1062
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1063
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1065
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1066
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_0
    return-void
.end method

.method private getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0d0143

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 578
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 581
    if-nez v5, :cond_3

    .line 587
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 654
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    .line 656
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 657
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0169

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 662
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d027b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 666
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 668
    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 669
    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 670
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 734
    :cond_2
    :goto_2
    return-object v1

    .line 594
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 595
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 596
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 600
    :goto_3
    if-eqz v3, :cond_f

    .line 601
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v3}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 606
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 607
    invoke-static {v5}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    .line 609
    if-eqz v3, :cond_5

    .line 610
    if-eqz v6, :cond_4

    iget-object v8, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v2

    .line 614
    :cond_4
    if-eqz v7, :cond_5

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v2

    .line 621
    :cond_5
    if-eqz v0, :cond_7

    .line 623
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_0

    .line 597
    :cond_6
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 598
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto :goto_3

    .line 629
    :cond_7
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_8

    .line 631
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 632
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 633
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    move-object v0, v3

    goto/16 :goto_0

    .line 638
    :cond_8
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    .line 644
    :cond_9
    const-string v0, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCall: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    .line 659
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v3}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 678
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 679
    sget-object v3, Lcom/android/phone/MiuiCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 731
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallCardInfo: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 682
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier;->getRedialTimes()I

    move-result v0

    .line 683
    if-gez v0, :cond_c

    .line 684
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 688
    :goto_5
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 686
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0279

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    goto :goto_5

    .line 693
    :pswitch_1
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 697
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_d

    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v2, :cond_d

    .line 699
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 701
    :cond_d
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 705
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0149

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 706
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 710
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0148

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 711
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 715
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 716
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 717
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 719
    iget-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d02fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 723
    :cond_e
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 728
    :pswitch_6
    const-string v0, "CallCard"

    const-string v2, "getCallCardInfo: IDLE call in the call card"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move-object v3, v4

    goto/16 :goto_3

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 14
    .parameter "call"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 467
    new-instance v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    invoke-direct {v6, p0, v12}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 469
    .local v6, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    iput-boolean v11, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 470
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0145

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 471
    iput-object v12, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 480
    iput-boolean v13, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 481
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    .line 517
    .end local v6           #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_0
    :goto_0
    return-object v6

    .line 483
    .restart local v6       #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 484
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 485
    .local v3, count:I
    const/4 v1, 0x0

    .line 486
    .local v1, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-lez v3, :cond_5

    .line 487
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 488
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 489
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 490
    .local v7, o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_2

    .line 491
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #o:Ljava/lang/Object;
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 497
    :goto_2
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 498
    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 487
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 492
    .restart local v7       #o:Ljava/lang/Object;
    :cond_2
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_3

    move-object v1, v7

    .line 493
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_2

    .line 495
    :cond_3
    const-string v9, "CallCard"

    const-string v10, "getConferenceCallCardInfo: no caller info"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 500
    .end local v7           #o:Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 504
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d02a1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 506
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    .line 507
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0148

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 511
    :cond_6
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, digitsPressed:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 513
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 514
    iput-object v4, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 515
    const-string v9, ""

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "call"

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 740
    return-object v0
.end method

.method private inflateDoubleCallsInfoBar()V
    .locals 3

    .prologue
    .line 208
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 209
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 211
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    .line 213
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    .line 214
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    .line 216
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    .line 217
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    .line 221
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$2;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    .line 231
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    .line 236
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    .line 238
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$3;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$3;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    .line 245
    return-void
.end method

.method private isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 521
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    .line 522
    .local v0, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshAfterInflate()V
    .locals 2

    .prologue
    .line 186
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    .line 188
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    .line 189
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    .line 190
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v0, Lcom/android/phone/CallTime;

    new-instance v1, Lcom/android/phone/MiuiCallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiCallCard$1;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v0, v1}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 205
    return-void
.end method

.method private switchFrontgroundCallCard(ZZ)V
    .locals 5
    .parameter "isFirstFrontground"
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 427
    if-eqz p2, :cond_2

    const-wide/16 v0, 0xc8

    .line 428
    .local v0, duration:J
    :goto_0
    if-eqz p1, :cond_3

    .line 429
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 431
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 432
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 436
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 437
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 451
    :cond_1
    :goto_1
    return-void

    .line 427
    .end local v0           #duration:J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 440
    .restart local v0       #duration:J
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 442
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 443
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 445
    :cond_4
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 447
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 448
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 787
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIONE:call.state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Lmiui/content/res/ExtraConfiguration;->getScaleMode()I

    move-result v8

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    move-object v7, v1

    .line 794
    :goto_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 795
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 799
    :goto_1
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v1}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 802
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    :goto_2
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 810
    if-eqz p7, :cond_0

    .line 811
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 813
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 824
    const-string v1, "CallCard"

    const-string v2, "MIONE:call timer reset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, p9

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 826
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->reset()V

    .line 827
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 836
    :goto_4
    iget-boolean v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    if-eqz v1, :cond_9

    .line 837
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    move/from16 v0, p10

    invoke-virtual {p5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 843
    :goto_5
    if-eqz p10, :cond_1

    .line 844
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_a

    .line 846
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 847
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 879
    :cond_1
    :goto_6
    invoke-virtual {p6}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    .line 881
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    :goto_7
    return-void

    .line 791
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    move-object v7, v1

    goto/16 :goto_0

    .line 797
    :cond_3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 805
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 815
    :cond_5
    if-eqz p7, :cond_6

    .line 816
    const/16 v1, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 828
    :cond_7
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 829
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    const/16 v1, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 832
    :cond_8
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 833
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 840
    :cond_9
    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 848
    :cond_a
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    .line 849
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 850
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v2, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_b

    .line 851
    iget-object v1, v7, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    .line 852
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_c

    .line 853
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 854
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200c7

    const v4, 0x7f0200c9

    const v5, 0x7f0200c8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lmiui/util/ContactPhotoUtils;->createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/Bitmap;

    .line 862
    :cond_b
    :goto_8
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 863
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 869
    :goto_9
    const/16 v1, 0xe

    if-lt v8, v1, :cond_1

    .line 870
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 859
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 866
    :cond_d
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 874
    :cond_e
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 884
    :cond_f
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private updateCallCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 248
    iget v0, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 266
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->hideCallCardElements()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-nez v0, :cond_2

    .line 259
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->inflateDoubleCallsInfoBar()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V
    .locals 12
    .parameter "firstCall"
    .parameter "secondCall"
    .parameter "isFirstCallFrontground"

    .prologue
    const/4 v11, 0x1

    .line 413
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    move-object v0, p0

    move-object v1, p1

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 418
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-nez p3, :cond_0

    move v10, v11

    :goto_0
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 423
    invoke-direct {p0, p3, v11}, Lcom/android/phone/MiuiCallCard;->switchFrontgroundCallCard(ZZ)V

    .line 424
    return-void

    .line 418
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "elapsedTime"
    .parameter "timeElapsed"

    .prologue
    .line 947
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 948
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNoCall()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method private updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "call"
    .parameter "phoneNumber"
    .parameter "number"

    .prologue
    .line 766
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 767
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 768
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 771
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 774
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #ssb:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    .line 407
    return-void
.end method

.method private updateSingleCall(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "call"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 463
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1034
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1037
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1038
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1043
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1044
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1045
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1050
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1051
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1054
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1057
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 969
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 982
    sparse-switch v0, :sswitch_data_0

    .line 992
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :goto_0
    return-void

    .line 988
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f080021 -> :sswitch_0
        0x7f080030 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x60a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 178
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 180
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->refreshAfterInflate()V

    .line 181
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 3
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 926
    move-object v0, p4

    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 927
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 928
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput-object p2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 929
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 931
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 932
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 934
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 908
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 915
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 917
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 158
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 164
    :cond_1
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 938
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 939
    return-void
.end method

.method public updateForDigitPressed()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 1001
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1002
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, digits:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1004
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1005
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget v3, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-ne v3, v5, :cond_2

    .line 1008
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1009
    :cond_2
    iget v3, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1010
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1011
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1014
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1015
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1016
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1018
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 747
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 748
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v1, :cond_0

    .line 749
    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 750
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 763
    :cond_0
    :goto_1
    return-void

    .line 747
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 751
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 752
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 753
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 754
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move v3, v4

    .line 755
    .local v3, isFgCallFirst:Z
    :goto_2
    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-nez v3, :cond_6

    if-ne v1, v0, :cond_6

    .line 756
    .local v4, isFirst:Z
    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    .line 757
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #isFgCallFirst:Z
    .end local v4           #isFirst:Z
    :cond_5
    move v3, v5

    .line 754
    goto :goto_2

    .restart local v3       #isFgCallFirst:Z
    :cond_6
    move v4, v5

    .line 755
    goto :goto_3

    .line 759
    .restart local v4       #isFirst:Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 288
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 289
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 292
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 293
    .local v2, firstCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 295
    .local v4, secondCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 304
    iput v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 305
    move-object v2, v3

    .line 361
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateCallCard()V

    .line 363
    iget v7, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 374
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateNoCall()V

    .line 381
    :goto_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-eq v5, v12, :cond_1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v11, :cond_a

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 386
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 391
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 392
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 396
    :goto_3
    return-void

    .line 307
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    .line 318
    iput v12, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 319
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 320
    move-object v2, v1

    .line 321
    move-object v4, v0

    goto :goto_0

    .line 323
    :cond_3
    move-object v2, v0

    .line 324
    move-object v4, v1

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_8

    .line 329
    :cond_5
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 330
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_6

    move-object v2, v1

    .line 331
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_0

    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v7, v8, :cond_0

    .line 333
    iput v12, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 334
    invoke-static {v2}, Lcom/android/phone/MiuiCdmaSecondCall;->getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;

    move-result-object v4

    .line 335
    if-nez v4, :cond_7

    .line 336
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    .line 330
    goto :goto_4

    .line 338
    :cond_7
    move-object v1, v4

    goto/16 :goto_0

    .line 357
    :cond_8
    iput v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    goto/16 :goto_0

    .line 365
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateRingingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 368
    :pswitch_1
    if-ne v2, v1, :cond_9

    :goto_5
    invoke-direct {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallCard;->updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V

    goto/16 :goto_1

    :cond_9
    move v5, v6

    goto :goto_5

    .line 371
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 388
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_2

    .line 394
    :cond_b
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
