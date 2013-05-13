.class Lcom/android/camera/CaptureDoneActivity$LoadPicture;
.super Landroid/os/AsyncTask;
.source "CaptureDoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureDoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPicture"
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
.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field final synthetic this$0:Lcom/android/camera/CaptureDoneActivity;


# direct methods
.method private constructor <init>(Lcom/android/camera/CaptureDoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->this$0:Lcom/android/camera/CaptureDoneActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CaptureDoneActivity;Lcom/android/camera/CaptureDoneActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureDoneActivity$LoadPicture;-><init>(Lcom/android/camera/CaptureDoneActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->this$0:Lcom/android/camera/CaptureDoneActivity;

    #calls: Lcom/android/camera/CaptureDoneActivity;->decodeCapturePic()V
    invoke-static {v0}, Lcom/android/camera/CaptureDoneActivity;->access$400(Lcom/android/camera/CaptureDoneActivity;)V

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 196
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->this$0:Lcom/android/camera/CaptureDoneActivity;

    #getter for: Lcom/android/camera/CaptureDoneActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CaptureDoneActivity;->access$500(Lcom/android/camera/CaptureDoneActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->this$0:Lcom/android/camera/CaptureDoneActivity;

    const v2, 0x7f040075

    invoke-direct {v0, v1, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 207
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/CaptureDoneActivity$LoadPicture;->this$0:Lcom/android/camera/CaptureDoneActivity;

    invoke-virtual {v1}, Lcom/android/camera/CaptureDoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 210
    return-void
.end method
