.class public final enum Landroid/widget/VideoView$ZoomType;
.super Ljava/lang/Enum;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/VideoView$ZoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/VideoView$ZoomType;

.field public static final enum ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

.field public static final enum ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

.field public static final enum ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Landroid/widget/VideoView$ZoomType;

    const-string v1, "ZOOM_VERTICAL"

    invoke-direct {v0, v1, v2}, Landroid/widget/VideoView$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    .line 132
    new-instance v0, Landroid/widget/VideoView$ZoomType;

    const-string v1, "ZOOM_HDMI"

    invoke-direct {v0, v1, v3}, Landroid/widget/VideoView$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    .line 133
    new-instance v0, Landroid/widget/VideoView$ZoomType;

    const-string v1, "ZOOM_LEVEL"

    invoke-direct {v0, v1, v4}, Landroid/widget/VideoView$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/VideoView$ZoomType;

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_VERTICAL:Landroid/widget/VideoView$ZoomType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_HDMI:Landroid/widget/VideoView$ZoomType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/VideoView$ZoomType;->ZOOM_LEVEL:Landroid/widget/VideoView$ZoomType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/VideoView$ZoomType;->$VALUES:[Landroid/widget/VideoView$ZoomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/VideoView$ZoomType;
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    const-class v0, Landroid/widget/VideoView$ZoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView$ZoomType;

    return-object v0
.end method

.method public static values()[Landroid/widget/VideoView$ZoomType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/widget/VideoView$ZoomType;->$VALUES:[Landroid/widget/VideoView$ZoomType;

    invoke-virtual {v0}, [Landroid/widget/VideoView$ZoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/VideoView$ZoomType;

    return-object v0
.end method
