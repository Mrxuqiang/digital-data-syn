/*
================================================================================
��ṹ����:TB_AWBAD
��ṹ����:ƾ֤ģ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBAD;
drop index AK_TB_AWBAD;
drop table TB_AWBAD;
create table TB_AWBAD  (
   AWBAD_ID             INTEGER                         not null,  /*ƾ֤ģ���ID     */
   AWBAD001             INTEGER                         not null,  /*ģ��ID                */
   AWBAD002             INTEGER                         not null,  /*����ID             */  
   AWBAD003             INTEGER,                                   /*����ID             */
   AWBAD004             INTEGER,                                   /*ƾ֤���ID             */
   AWBAD005             VARCHAR2(1),                               /*����ʽ             */
   AWBAD006             VARCHAR2(200),                             /*�Ƶ��˹�ʽ             */   
   AWBAD007             VARCHAR2(200),                             /*�Ƶ����ڹ�ʽ             */
   AWBAD008             INTEGER,                                   /*��˾ID                  */
   AWBAD009             INTEGER,                                   /*�������ID              */  
   AWBAD010             INTEGER,                                   /*��������ID              */ 
   AWBAD011             VARCHAR2(255),                             /*��ע                    */
   AWBAD012             VARCHAR2(200),                             /*�Ƶ��˹�ʽ����       */  
   AWBAD013             VARCHAR2(200),                             /*�Ƶ����ڹ�ʽ����     */                
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_AWBAD primary key (AWBAD_ID)
);
create unique index AK_TB_AWBAD on TB_AWBAD (AWBAD009,AWBAD010,AWBAD002,AWBAD003);
create sequence SEQ_TB_AWBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAD to public;
grant index  on TB_AWBAD to public;
grant update on TB_AWBAD to public; 
grant delete on TB_AWBAD to public;  
grant insert on TB_AWBAD to public; 
grant select on SEQ_TB_AWBAD to public;   