.class Lcom/android/gallery3d/app/MoviePlayer$11;
.super Ljava/lang/Thread;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->sendPlayRecordToLetv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->getPlayRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$11;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOnLineVideoPlayRecord:Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/OnLineVideoPlayRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->clearRecord()V

    .line 906
    :cond_0
    return-void
.end method
