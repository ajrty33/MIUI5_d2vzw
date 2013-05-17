.class Lcom/android/phone/MiuiInCallScreen$2;
.super Landroid/os/AsyncTask;
.source "MiuiInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiInCallScreen;

.field final synthetic val$mr:Landroid/media/MediaRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiInCallScreen;Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/phone/MiuiInCallScreen$2;->this$0:Lcom/android/phone/MiuiInCallScreen;

    iput-object p2, p0, Lcom/android/phone/MiuiInCallScreen$2;->val$mr:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 476
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiInCallScreen$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$2;->val$mr:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 480
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$2;->val$mr:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method
