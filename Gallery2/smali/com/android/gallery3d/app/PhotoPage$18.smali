.class Lcom/android/gallery3d/app/PhotoPage$18;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onStateResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showBars(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5800(Lcom/android/gallery3d/app/PhotoPage;Z)V

    .line 2205
    return-void
.end method
