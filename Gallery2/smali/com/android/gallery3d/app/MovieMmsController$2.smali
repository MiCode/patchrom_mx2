.class Lcom/android/gallery3d/app/MovieMmsController$2;
.super Ljava/lang/Object;
.source "MovieMmsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieMmsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieMmsController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieMmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController$2;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$2;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$400(Lcom/android/gallery3d/app/MovieMmsController;)Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;->onPlayPause()V

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$2;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #calls: Lcom/android/gallery3d/app/MovieMmsController;->updatePlayPasue()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$500(Lcom/android/gallery3d/app/MovieMmsController;)V

    .line 112
    return-void
.end method
