.class Lcom/android/gallery3d/app/MoviePlayer$14;
.super Ljava/lang/Thread;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->realInit(Z)V
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
    .line 679
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$14;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$14;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->addUserAgent()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$4800(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 682
    return-void
.end method
