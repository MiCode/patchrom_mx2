.class final Lcom/android/server/NotificationManagerService$ToastRecord;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastRecord"
.end annotation


# instance fields
.field final callback:Landroid/app/ITransientNotification;

.field duration:I

.field message:Ljava/lang/CharSequence;

.field final pid:I

.field final pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 1
    .parameter "pid"
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    .line 398
    iput-object p2, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 399
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->message:Ljava/lang/CharSequence;

    .line 401
    iput p4, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    .line 402
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/app/ITransientNotification;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "pid"
    .parameter "pkg"
    .parameter "callback"
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    .line 389
    iput-object p2, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    .line 390
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    .line 391
    iput-object p4, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->message:Ljava/lang/CharSequence;

    .line 392
    iput p5, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    .line 393
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 405
    iput p1, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    .line 406
    return-void
.end method
