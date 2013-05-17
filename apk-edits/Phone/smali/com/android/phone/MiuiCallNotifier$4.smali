.class Lcom/android/phone/MiuiCallNotifier$4;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCallNotifier;->initTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$4;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1099
    if-nez p1, :cond_2

    .line 1101
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$4;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$1600(Lcom/android/phone/MiuiCallNotifier;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 1102
    .local v0, result:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1105
    :cond_0
    const-string v1, "MiuiCallNotifier"

    const-string v2, "Language is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .end local v0           #result:I
    :goto_0
    return-void

    .line 1108
    .restart local v0       #result:I
    :cond_1
    const-string v1, "MiuiCallNotifier"

    const-string v2, "init success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1112
    .end local v0           #result:I
    :cond_2
    const-string v1, "MiuiCallNotifier"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
