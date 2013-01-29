.class Lcom/android/gallery3d/app/MovieMmsController$3;
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
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController$3;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$3;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 119
    return-void
.end method
