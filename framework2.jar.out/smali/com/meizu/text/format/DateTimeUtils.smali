.class public Lcom/meizu/text/format/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field private static final PATTERN_HOUR_MINUTE:I = 0x0

.field private static final PATTERN_MONTH_DAY:I = 0x3

.field private static final PATTERN_MONTH_DAY_HOUR_MINUTE:I = 0x4

.field private static final PATTERN_WEEK:I = 0x1

.field private static final PATTERN_WEEK_HOUR_MINUTE:I = 0x2

.field private static final PATTERN_WEEK_MONTH_DAY_HOUR_MINUTE:I = 0x5

.field private static final PATTERN_YEAR_MONTH_DAY:I = 0x6

.field private static final PATTERN_YEAR_MONTH_DAY_HOUR_MINUTE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "when"
    .parameter "pattern"

    .prologue
    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, flags:I
    packed-switch p3, :pswitch_data_0

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 202
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_0
    const/16 v5, 0x81

    .line 176
    goto :goto_0

    .line 178
    :pswitch_1
    const v5, 0x8002

    .line 179
    goto :goto_0

    .line 181
    :pswitch_2
    const v5, 0x8083

    .line 183
    goto :goto_0

    .line 185
    :pswitch_3
    const/16 v5, 0x10

    .line 186
    goto :goto_0

    .line 188
    :pswitch_4
    const/16 v5, 0x91

    .line 189
    goto :goto_0

    .line 191
    :pswitch_5
    const v5, 0x8093

    .line 193
    goto :goto_0

    .line 195
    :pswitch_6
    const v5, 0x10014

    .line 196
    goto :goto_0

    .line 198
    :pswitch_7
    const v5, 0x10095

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "when"
    .parameter "type"

    .prologue
    .line 96
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 97
    .local v4, then:Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 98
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 99
    .local v3, now:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 101
    iget v7, v3, Landroid/text/format/Time;->yearDay:I

    iget v8, v3, Landroid/text/format/Time;->weekDay:I

    sub-int v6, v7, v8

    .line 102
    .local v6, weekStart:I
    add-int/lit8 v5, v6, 0x7

    .line 104
    .local v5, weekEnd:I
    iget v7, v3, Landroid/text/format/Time;->year:I

    iget v8, v4, Landroid/text/format/Time;->year:I

    if-ne v7, v8, :cond_0

    const/4 v1, 0x1

    .line 105
    .local v1, isThisYear:Z
    :goto_0
    if-eqz v1, :cond_1

    iget v7, v4, Landroid/text/format/Time;->yearDay:I

    iget v8, v3, Landroid/text/format/Time;->yearDay:I

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    .line 106
    .local v2, isToday:Z
    :goto_1
    if-eqz v1, :cond_2

    iget v7, v4, Landroid/text/format/Time;->yearDay:I

    if-lt v7, v6, :cond_2

    iget v7, v4, Landroid/text/format/Time;->yearDay:I

    if-ge v7, v5, :cond_2

    const/4 v0, 0x1

    .line 108
    .local v0, isThisWeek:Z
    :goto_2
    packed-switch p3, :pswitch_data_0

    .line 152
    const/4 v7, 0x0

    :goto_3
    return-object v7

    .line 104
    .end local v0           #isThisWeek:Z
    .end local v1           #isThisYear:Z
    .end local v2           #isToday:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    .restart local v1       #isThisYear:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 106
    .restart local v2       #isToday:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 110
    .restart local v0       #isThisWeek:Z
    :pswitch_0
    if-eqz v2, :cond_3

    .line 111
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 114
    :cond_4
    if-eqz v1, :cond_5

    .line 115
    const/4 v7, 0x3

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 117
    :cond_5
    const/4 v7, 0x6

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 120
    :pswitch_1
    if-eqz v2, :cond_6

    .line 121
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 122
    :cond_6
    if-eqz v0, :cond_7

    .line 123
    const/4 v7, 0x2

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 124
    :cond_7
    if-eqz v1, :cond_8

    .line 125
    const/4 v7, 0x4

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 127
    :cond_8
    const/4 v7, 0x7

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 130
    :pswitch_2
    if-eqz v1, :cond_9

    .line 131
    const/4 v7, 0x5

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 133
    :cond_9
    const/4 v7, 0x7

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 136
    :pswitch_3
    if-eqz v2, :cond_a

    .line 137
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 138
    :cond_a
    if-eqz v1, :cond_b

    .line 139
    const/4 v7, 0x4

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 141
    :cond_b
    const/4 v7, 0x7

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 144
    :pswitch_4
    if-eqz v2, :cond_c

    .line 145
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 146
    :cond_c
    if-eqz v1, :cond_d

    .line 147
    const/4 v7, 0x3

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 149
    :cond_d
    const/4 v7, 0x6

    invoke-static {p0, p1, p2, v7}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"
    .parameter "type"
    .parameter "hasTime"

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/text/format/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/text/format/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
