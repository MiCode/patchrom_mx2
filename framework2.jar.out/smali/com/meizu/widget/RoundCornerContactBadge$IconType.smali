.class public final enum Lcom/meizu/widget/RoundCornerContactBadge$IconType;
.super Ljava/lang/Enum;
.source "RoundCornerContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RoundCornerContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/RoundCornerContactBadge$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_CALLIN:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_CALLOUT:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_MISSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_RECORD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_REFUSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_RINGONCE:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_CALL_LOG_VOICEMAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field public static final enum IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;


# instance fields
.field final iconTypeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_NULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 158
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_CALLOUT"

    invoke-direct {v0, v1, v5, v5}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 159
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_CALLIN"

    invoke-direct {v0, v1, v6, v6}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 160
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_MISSED"

    invoke-direct {v0, v1, v7, v7}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 161
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_REFUSED"

    invoke-direct {v0, v1, v8, v8}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 162
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_RINGONCE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 163
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_RECORD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 164
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_RECORD_FAIL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 165
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_CALL_LOG_VOICEMAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 166
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_SMS_HAS_UNREAD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 167
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    const-string v1, "IC_SMS_HAS_NOTDELIVERED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 156
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->$VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->iconTypeInt:I

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/RoundCornerContactBadge$IconType;
    .locals 1
    .parameter "name"

    .prologue
    .line 156
    const-class v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/RoundCornerContactBadge$IconType;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->$VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    invoke-virtual {v0}, [Lcom/meizu/widget/RoundCornerContactBadge$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-object v0
.end method
