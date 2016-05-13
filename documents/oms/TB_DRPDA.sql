/*
================================================================================
��ṹ����:TB_DRPDA
��ṹ����:ָ�����ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPDA;
drop table TB_DRPDA;
create table TB_DRPDA  (
   DRPDA_ID             INTEGER                            NOT NULL,   /*ָ������ID               */   
   DRPDA001             VARCHAR2(20),                                  /*������                 */   
   DRPDA002             VARCHAR2(20),                                  /*ָ��ID                   */   
   DRPDA003             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA004             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA005             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA006             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA007             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA008             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA009             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA010             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA011             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA012             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA013             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA014             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA015             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA016             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA017             VARCHAR2(64),                                  /*�ؼ�������               */
   DRPDA018             NUMBER(16,2),                                  /*���                     */
   DRPDA019             VARCHAR2(1),                                   /*��������                 */   
   CREATE_USER          VARCHAR2(12),                                  /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����             */                               
   CREATE_DATE          DATE,                                          /*��������                 */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա                 */
   MODI_DATE            DATE,                                          /*�޸�����                 */
   FLAG                 NUMBER(1),                                     /*����״̬                 */  
   constraint PK_TB_DRPDA primary key (DRPDA_ID)
);
create sequence SEQ_TB_DRPDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPDA to public;
grant index  on TB_DRPDA to public;
grant update on TB_DRPDA to public; 
grant delete on TB_DRPDA to public;  
grant insert on TB_DRPDA to public; 
grant select on SEQ_TB_DRPDA to public; 