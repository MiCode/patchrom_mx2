.class Lcom/android/gallery3d/app/MoviePlayer$8$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MoviePlayer$8;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer$8;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$8$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$8;

    iget-object v0, v0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doDlnaPause()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2200(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 328
    return-void
.end method
