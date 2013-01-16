.class final Lcom/meizu/widget/RoundCornerContactBadge$1;
.super Ljava/lang/Object;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RoundCornerContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1301
    invoke-static {}, Lcom/meizu/widget/RoundCornerContactBadge;->access$500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1302
    :try_start_0
    invoke-static {}, Lcom/meizu/widget/RoundCornerContactBadge;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/widget/RoundCornerContactBadge;->access$602(Z)Z

    .line 1305
    :cond_0
    monitor-exit v1

    .line 1306
    return-void

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
