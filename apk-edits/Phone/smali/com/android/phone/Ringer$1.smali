.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 337
    :pswitch_1
    invoke-static {}, Lcom/android/phone/Ringer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mRingHandler: PLAY_RING_ONCE..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 340
    invoke-static {}, Lcom/android/phone/Ringer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 344
    :cond_3
    if-nez v0, :cond_4

    .line 345
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 347
    :cond_4
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 348
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 349
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 351
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :cond_6
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 354
    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 356
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 357
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 358
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    .line 359
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;J)J

    .line 361
    :cond_7
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 351
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 365
    :pswitch_2
    invoke-static {}, Lcom/android/phone/Ringer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 366
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 367
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_a

    .line 368
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 372
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 370
    :cond_a
    invoke-static {}, Lcom/android/phone/Ringer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
