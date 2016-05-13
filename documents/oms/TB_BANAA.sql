/*
================================================================================
��ṹ����:TB_BANAA
��ṹ����:�����˻���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANAA;
drop index AK_TB_BANAA;
drop table TB_BANAA;
create table TB_BANAA  (
   BANAA_ID             INTEGER                         not null,  /*���г�ʼ��ID         */
   BANAA001             VARCHAR2(10)                    not null,  /*�˻����             */
   BANAA002             VARCHAR2(30)                    not null,  /*�˻�����             */
   BANAA003             VARCHAR2(1)                     not null,  /*�˻�������Դ         */
   BANAA004             INTEGER,                                   /*�����˻�ID             */
   BANAA005             INTEGER,                                   /*��������˲�ID         */
   BANAA006             INTEGER,                                   /*��ĿID                 */
   BANAA007             VARCHAR2(20),                              /*�����������ʶ           */
   BANAA008             INTEGER                         not null,  /*����                 */
   BANAA009             NUMBER(16,2) ,                             /*���ж��˵��跽���   */
   BANAA010             NUMBER(16,2) ,                             /*���ж��˵��������   */
   BANAA011             VARCHAR2(1)                     not null,  /*���˱�׼             */
   BANAA012             DATE,                                      /*��������             */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BANAA primary key (BANAA_ID)
);
create unique index AK_TB_BANAA on TB_BANAA (BANAA001,BANAA002,BANAA004,BANAA005);
create sequence SEQ_TB_BANAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAA to public;
grant index  on TB_BANAA to public;
grant update on TB_BANAA to public; 
grant delete on TB_BANAA to public;  
grant insert on TB_BANAA to public; 
grant select on SEQ_TB_BANAA to public;   