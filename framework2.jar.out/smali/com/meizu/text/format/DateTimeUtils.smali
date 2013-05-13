.class public Lcom/meizu/text/format/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_CALL_LOGS:I = 0x5

.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field private static FormatResultLast:Ljava/lang/String; = null

.field private static FormatTypeLast:I = 0x0

.field private static NowMillisLast:J = 0x0L

.field private static NowTimeLast:Landroid/text/format/Time; = null

.field private static final PATTERN_HOUR_MINUTE:I = 0x0

.field private static final PATTERN_MONTH_DAY:I = 0x3

.field private static final PATTERN_MONTH_DAY_HOUR_MINUTE:I = 0x4

.field private static final PATTERN_WEEK:I = 0x1

.field private static final PATTERN_WEEK_HOUR_MINUTE:I = 0x2

.field private static final PATTERN_WEEK_MONTH_DAY_HOUR_MINUTE:I = 0x5

.field private static final PATTERN_YEAR_MONTH_DAY:I = 0x6

.field private static final PATTERN_YEAR_MONTH_DAY_HOUR_MINUTE:I = 0x7

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    .line 94
    const/4 v0, -0x1

    sput v0, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

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
    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, flags:I
    packed-switch p3, :pswitch_data_0

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 283
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-object v0

    .line 256
    :pswitch_0
    const/16 v5, 0x81

    .line 257
    goto :goto_0

    .line 259
    :pswitch_1
    const v5, 0x8002

    .line 260
    goto :goto_0

    .line 262
    :pswitch_2
    const v5, 0x8083

    .line 264
    goto :goto_0

    .line 266
    :pswitch_3
    const/16 v5, 0x10

    .line 267
    goto :goto_0

    .line 269
    :pswitch_4
    const/16 v5, 0x91

    .line 270
    goto :goto_0

    .line 272
    :pswitch_5
    const v5, 0x8093

    .line 274
    goto :goto_0

    .line 276
    :pswitch_6
    const v5, 0x10014

    .line 277
    goto :goto_0

    .line 279
    :pswitch_7
    const v5, 0x10095

    goto :goto_0

    .line 254
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
    .locals 20
    .parameter "context"
    .parameter "when"
    .parameter "type"

    .prologue
    .line 111
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 112
    .local v11, then:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 116
    .local v7, nowmillis:Ljava/lang/Long;
    sget v14, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    if-ne v0, v14, :cond_1

    const/4 v9, 0x1

    .line 118
    .local v9, sameType:Z
    :goto_0
    sput p3, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, sameNowDay:Z
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v14, :cond_2

    .line 122
    const/4 v8, 0x0

    .line 132
    :goto_1
    if-nez v8, :cond_4

    .line 133
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #now:Landroid/text/format/Time;
    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 134
    .restart local v6       #now:Landroid/text/format/Time;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 137
    sput-object v6, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 138
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x3c

    mul-int/lit8 v16, v16, 0x3c

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v6, Landroid/text/format/Time;->second:I

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    sput-wide v14, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    .line 143
    :goto_2
    const/4 v10, 0x0

    .line 144
    .local v10, sameWhenDay:Z
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v14, :cond_0

    .line 145
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v14, v14, Landroid/text/format/Time;->year:I

    iget v15, v11, Landroid/text/format/Time;->year:I

    if-ne v14, v15, :cond_5

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v14, v14, Landroid/text/format/Time;->yearDay:I

    iget v15, v11, Landroid/text/format/Time;->yearDay:I

    if-ne v14, v15, :cond_5

    const/4 v10, 0x1

    .line 148
    :cond_0
    :goto_3
    sput-object v11, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 150
    iget v14, v6, Landroid/text/format/Time;->yearDay:I

    iget v15, v6, Landroid/text/format/Time;->weekDay:I

    sub-int v13, v14, v15

    .line 151
    .local v13, weekStart:I
    add-int/lit8 v12, v13, 0x7

    .line 153
    .local v12, weekEnd:I
    iget v14, v6, Landroid/text/format/Time;->year:I

    iget v15, v11, Landroid/text/format/Time;->year:I

    if-ne v14, v15, :cond_6

    const/4 v4, 0x1

    .line 154
    .local v4, isThisYear:Z
    :goto_4
    if-eqz v4, :cond_7

    iget v14, v11, Landroid/text/format/Time;->yearDay:I

    iget v15, v6, Landroid/text/format/Time;->yearDay:I

    if-ne v14, v15, :cond_7

    const/4 v5, 0x1

    .line 155
    .local v5, isToday:Z
    :goto_5
    if-eqz v4, :cond_8

    iget v14, v11, Landroid/text/format/Time;->yearDay:I

    if-lt v14, v13, :cond_8

    iget v14, v11, Landroid/text/format/Time;->yearDay:I

    if-ge v14, v12, :cond_8

    const/4 v3, 0x1

    .line 157
    .local v3, isThisWeek:Z
    :goto_6
    packed-switch p3, :pswitch_data_0

    .line 233
    const/4 v14, 0x0

    :goto_7
    return-object v14

    .line 116
    .end local v3           #isThisWeek:Z
    .end local v4           #isThisYear:Z
    .end local v5           #isToday:Z
    .end local v8           #sameNowDay:Z
    .end local v9           #sameType:Z
    .end local v10           #sameWhenDay:Z
    .end local v12           #weekEnd:I
    .end local v13           #weekStart:I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v8       #sameNowDay:Z
    .restart local v9       #sameType:Z
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-wide v16, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    cmp-long v14, v14, v16

    if-ltz v14, :cond_3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-wide v16, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    const-wide/32 v18, 0x5265c00

    add-long v16, v16, v18

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    .line 126
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 128
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 140
    :cond_4
    sget-object v6, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto :goto_2

    .line 145
    .restart local v10       #sameWhenDay:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 153
    .restart local v12       #weekEnd:I
    .restart local v13       #weekStart:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 154
    .restart local v4       #isThisYear:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 155
    .restart local v5       #isToday:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 159
    .restart local v3       #isThisWeek:Z
    :pswitch_0
    if-eqz v5, :cond_9

    .line 160
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 161
    :cond_9
    if-eqz v3, :cond_b

    .line 163
    if-eqz v10, :cond_a

    if-eqz v9, :cond_a

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 164
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_7

    .line 166
    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 167
    :cond_b
    if-eqz v4, :cond_d

    .line 169
    if-eqz v10, :cond_c

    if-eqz v9, :cond_c

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 170
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_7

    .line 172
    :cond_c
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 175
    :cond_d
    if-eqz v10, :cond_e

    if-eqz v9, :cond_e

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 176
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_7

    .line 178
    :cond_e
    const/4 v14, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 181
    :pswitch_1
    if-eqz v5, :cond_f

    .line 182
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 183
    :cond_f
    if-eqz v3, :cond_10

    .line 184
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 185
    :cond_10
    if-eqz v4, :cond_11

    .line 186
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 188
    :cond_11
    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 191
    :pswitch_2
    if-eqz v4, :cond_12

    .line 192
    const/4 v14, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 194
    :cond_12
    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 197
    :pswitch_3
    if-eqz v5, :cond_13

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 199
    :cond_13
    if-eqz v4, :cond_14

    .line 200
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 202
    :cond_14
    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 205
    :pswitch_4
    if-eqz v5, :cond_15

    .line 206
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 207
    :cond_15
    if-eqz v4, :cond_17

    .line 209
    if-eqz v10, :cond_16

    if-eqz v9, :cond_16

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_16

    .line 210
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_7

    .line 212
    :cond_16
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 215
    :cond_17
    if-eqz v10, :cond_18

    if-eqz v9, :cond_18

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 216
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_7

    .line 218
    :cond_18
    const/4 v14, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 222
    :pswitch_5
    if-eqz v4, :cond_19

    .line 223
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 227
    :cond_19
    if-eqz v10, :cond_1a

    if-eqz v9, :cond_1a

    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 228
    sget-object v14, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_7

    .line 230
    :cond_1a
    const/4 v14, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v14}, Lcom/meizu/text/format/DateTimeUtils;->formatByPattern(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"
    .parameter "type"
    .parameter "hasTime"

    .prologue
    .line 87
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
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/text/format/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
