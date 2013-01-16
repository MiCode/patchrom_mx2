.class Landroid/widget/VideoView$PendingTrackInfo;
.super Ljava/lang/Object;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingTrackInfo"
.end annotation


# instance fields
.field audioTrackIndex:I

.field final synthetic this$0:Landroid/widget/VideoView;

.field timeTextIndex:I


# direct methods
.method private constructor <init>(Landroid/widget/VideoView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 119
    iput-object p1, p0, Landroid/widget/VideoView$PendingTrackInfo;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v0, p0, Landroid/widget/VideoView$PendingTrackInfo;->audioTrackIndex:I

    .line 121
    iput v0, p0, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/VideoView;Landroid/widget/VideoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/VideoView$PendingTrackInfo;-><init>(Landroid/widget/VideoView;)V

    return-void
.end method
