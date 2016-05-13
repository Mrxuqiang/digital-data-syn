/*
================================================================================
��ṹ����:TB_INVFG
��ṹ����:�̵���ܵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFG;
drop index AK_TB_INVFG;
drop table TB_INVFG;
create table TB_INVFG  (
   INVFG_ID         INTEGER               not null,       /*�̵���ܵ�ID     */
   INVFG001         INTEGER               not null,       /*�̵���ܵ���     */
   INVFG002         VARCHAR2(30)          not null,       /*�̵���ܵ���     */
   INVFG003         INTEGER               not null,       /*�̵�ƻ���ID     */
   INVFG004         DATE                  not null,       /*�̵�����         */
   INVFG005         INTEGER               not null,       /*Ӫ����֯         */
   INVFG006         INTEGER               not null,       /*�ֿ�         */
   INVFG007         INTEGER               not null,       /*����         */
   INVFG008         INTEGER               not null,       /*����         */
   INVFG009         INTEGER               not null,       /*����         */
   INVFG010         INTEGER               not null,       /*��λ         */
   INVFG011         INTEGER,                              /*������         */
   INVFG012         DATE,                                 /*��������         */
   INVFG013         VARCHAR2(1),                          /*���״̬         */
   INVFG014         INTEGER,                              /*¼����           */
   INVFG015         DATE,                                 /*¼��ʱ��         */
   INVFG016         INTEGER,                              /*�����           */
   INVFG017         DATE,                                 /*���ʱ��         */
   CREATE_USER      VARCHAR2(12),                         /*������Ա           */
   USER_GROUP       VARCHAR2(12),                         /*������Ա����       */                               
   CREATE_DATE      DATE,                                 /*��������           */
   MODIFIER         VARCHAR2(12),                         /*�޸���Ա           */
   MODI_DATE        DATE,                                 /*�޸�����           */
   FLAG             NUMBER(1),                            /*����״̬           */
   constraint PK_TB_INVFG primary key (INVFG_ID)
);
create unique index AK_TB_INVFG on TB_INVFG (INVFG002, INVFG005);
create sequence SEQ_TB_INVFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFG to public;
grant index  on TB_INVFG to public;
grant update on TB_INVFG to public; 
grant delete on TB_INVFG to public;  
grant insert on TB_INVFG to public; 
grant select on SEQ_TB_INVFG to public;   