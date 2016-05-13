/*
================================================================================
��ṹ����:TB_SEROF
��ṹ����:ӪҵԱ��ְ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROF;
drop index AK_TB_SEROF;
drop table TB_SEROF;
create table TB_SEROF (
   SEROF_ID             INTEGER                         not null,  /*ӪҵԱ��ְ���뵥ID                     */
   SEROF001             INTEGER                         not null,  /*����                                   */
   SEROF002             VARCHAR2(30)                    not null,  /*���뵥��                               */
   SEROF003             DATE                            not null,  /*��������                               */ 
   SEROF004             DATE                            not null,  /*��ְ����                               */
   SEROF005             INTEGER                         not null,  /*�̳�                                   */   
   SEROF006             INTEGER ,                                  /*չ��                                   */ 
   SEROF007             INTEGER ,                                  /*�̻�                                   */  
   SEROF008             INTEGER ,                                  /*���޺�ͬ                               */
   SEROF009             VARCHAR2(60) ,                             /*ӪҵԱ����                             */  
   SEROF010             VARCHAR2(30) ,                             /*ӪҵԱ����                             */  
   SEROF011             VARCHAR2(30) ,                             /*�Ա�                                   */
   SEROF012             VARCHAR2(30) ,                             /*��ϵ�绰                               */ 
   SEROF013             VARCHAR2(1000) ,                           /*��ע                                   */ 
   SEROF014             VARCHAR2(250) ,                            /*�����ֶ�1                              */  
   SEROF015             VARCHAR2(250) ,                            /*�����ֶ�2                              */  
   SEROF016             VARCHAR2(250) ,                            /*�����ֶ�3                              */  
   SEROF017             VARCHAR2(250) ,                            /*�����ֶ�4                              */
   SEROF018             VARCHAR2(250) ,                            /*�����ֶ�5                              */  
   SEROF019             VARCHAR2(250) ,                            /*�����ֶ�6                              */  
   SEROF020             VARCHAR2(250) ,                            /*�����ֶ�7                              */  
   SEROF021             VARCHAR2(250) ,                            /*�����ֶ�8                              */  
   SEROF022             VARCHAR2(250) ,                            /*�����ֶ�9                              */  
   SEROF023             VARCHAR2(250) ,                            /*�����ֶ�10                             */
   SEROF024             INTEGER ,                                  /*¼����                                 */  
   SEROF025             DATE ,                                     /*¼������                               */  
   SEROF026             INTEGER ,                                  /*�����                                 */  
   SEROF027             DATE ,                                     /*�������                               */  
   SEROF028             VARCHAR2(1) ,                              /*����״̬                               */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա                               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                           */                               
   CREATE_DATE          DATE,                                      /*��������                               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                               */
   MODI_DATE            DATE,                                      /*�޸�����                               */
   FLAG                 NUMBER(1),                                 /*����״̬                               */
   constraint PK_TB_SEROF primary key (SEROF_ID)
);
create sequence SEQ_TB_SEROF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROF to public;
grant index  on TB_SEROF to public;
grant update on TB_SEROF to public; 
grant delete on TB_SEROF to public;  
grant insert on TB_SEROF to public; 
grant select on SEQ_TB_SEROF to public;   