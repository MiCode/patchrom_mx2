.class final Lcom/meizu/video/client/util/CommonUtil$1;
.super Ljava/lang/Thread;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/util/CommonUtil;->reportLoginForLS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loginUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/meizu/video/client/util/CommonUtil$1;->val$loginUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/meizu/video/client/util/CommonUtil$1;->val$loginUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    return-void
.end method
