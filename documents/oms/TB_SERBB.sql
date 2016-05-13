/*
================================================================================
��ṹ����:TB_SERBB
��ṹ����:Ͷ�߻ظ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERBB;
drop index AK_TB_SERBB;
drop table TB_SERBB;
create table TB_SERBB  (                                       
   SERBB_ID             INTEGER                        not null,   /*�ظ���ID          */            
   SERBB001             INTEGER                        not null,   /*�ظ�����          */            
   SERBB002             VARCHAR2(30)                   not null,   /*�ظ�����          */            
   SERBB003             INTEGER                        not null,   /*Ͷ�ߵ�ID          */            
   SERBB004             DATE                           not null,   /*�ظ�����          */            
   SERBB005             DATE                           not null,   /*ʵ�ʴ�������      */            
   SERBB006             NUMBER(1)                      not null,   /*�ظ���ʽ          */               
   SERBB007             INTEGER                        not null,   /*�ظ���            */   
   SERBB008             VARCHAR2(255),                 not null,   /*�ظ�����          */               
   SERBB009             INTEGER,				   /*Ӫ����֯           */
   SERBB010             NUMBER(28��2),                             /*�⸶���           */
   SERBB011             INTEGER,                                   /*�����ʽ           */
   SERBB012             VARCHAR2(1),                               /*Ͷ�߼���           */
   SERBB013             VARCHAR2(1),                               /*�ͻ������         */
   SERBB014             VARCHAR2(1000),                            /*Ͷ�߶������         */
   SERBB015             VARCHAR2(1000),                            /*��ע               */
   SERBB016             INTEGER,                                   /*�⸶��ʽID          */2011/12/17 ADD BY OUWX
   SERBB017             VARCHAR2(1),                               /*�̻������         */ 20121031 add by shizhan 
   SERBB018             VARCHAR2(1000),                            /*ԭ�����           */ 20121031 add by shizhan 
   SERBB019             VARCHAR2(1000),                            /*Э������           */ 20121031 add by shizhan 
   SERBB020             VARCHAR2(1000),                            /*���ȸ������ط�     */ 20121031 add by shizhan 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             
                                           
   constraint PK_TB_SERBB primary key (SERBB_ID)                               
);                                           
create unique index AK_TB_SERBB on TB_SERBB (SERBB001,SERBB002);               
create sequence SEQ_TB_SERBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBB to public;                                     
grant index  on TB_SERBB to public;                                     
grant update on TB_SERBB to public;                                      
grant delete on TB_SERBB to public;                                       
grant insert on TB_SERBB to public;                                      
grant select on SEQ_TB_SERBB to public;                                        