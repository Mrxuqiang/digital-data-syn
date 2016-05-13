/*20120928 add by gaoxl for ���Ӽ�ͥ���PUBTA034�ֶΣ�����crm��ͥ�����ֶ�pubta035
  20121022 add by gaoxl for ����Ǳ�͵ȼ��ֶ�pubta039
  20130719 add by gaoxl for ���� ����pubta040��pubta041�ֶ�
  20130806 add by gaoxl for ���ǣ����ӽ�ͨ�����ֶ�
  20130818 add by gaoxl for ���ǣ�add PUBTA043
*/
/*
================================================================================
��ṹ����:TB_PUBTA
��ṹ����:Ǳ�ڿͻ��ǼǱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBTA;
drop index AK_TB_PUBTA;
drop table TB_PUBTA;

create table TB_PUBTA(
   PUBTA_ID             INTEGER                   not null, /*����ID             */
   PUBTA001             INTEGER                   not null, /*����ID            */--20110720 mark by xiechun
   PUBTA002             VARCHAR2(10)              not null, /*���ݱ��           */--ɢ�ͱ��
   PUBTA003             INTEGER                   not null, /*������֯ID        */
   PUBTA004             DATE                      not null, /*��������          */
   PUBTA005             VARCHAR2(30),                       /*�˿�����           */
   PUBTA006             VARCHAR2(30),                       /*�˿͵绰           */
   PUBTA007             VARCHAR2(30),                       /*�˿��ֻ�           */
   PUBTA008             VARCHAR2(60),                       /*�˿��ʼ�           */        
   PUBTA009             VARCHAR2(4)               not null, /*�˿��Ա�           */  --��:1 Ů:2
   PUBTA010             VARCHAR2(1),                        /*�˿�����           */
   PUBTA011             INTEGER,                            /*�˿�С��           */
   PUBTA012             VARCHAR2(255),                      /*�˿͵�ַ           */
   PUBTA013             NUMBER(4),                          /*��ͥ�˿�           */
   PUBTA014             VARCHAR2(255),                      /*��ò����           */
   PUBTA015             INTEGER  ,                          /*¼����ID           */    
   PUBTA016             DATE                    not null,   /*¼��ʱ��           */   
   PUBTA017             VARCHAR2(1)             not null,   /*���״̬           */       
   PUBTA018             INTEGER  ,                          /*�����ID           */    
   PUBTA019             date,                               /*���ʱ��           */ 
   PUBTA020             INTEGER  ,                          /*���״���           */ 
   PUBTA021             INTEGER                           , /*����;��           */--20110416 add by xiechun
   PUBTA022             VARCHAR2(1),                        /*�˿�ְҵ           */--20110720 add by xiechun
   PUBTA023             VARCHAR2(1),                        /*�˿���ҵ           */--20110720 add by xiechun
   PUBTA024             NUMBBER(12,2),                      /*��ͥ������         */--20110720 add by xiechun
   PUBTA025             VARCHAR2(255),                      /*ͨѶ��ַ           */
   PUBTA026             INTEGER,                            /*����               */--2011-12-21 add by peiyn
   PUBTA027             VARCHAR2(60),                       /*�ͻ�ȫ��           */--20120619 add by shizhan
   PUBTA028             VARCHAR2(1),                        /*�ͻ�״̬           */--20120619 add by shizhan       
   PUBTA029             VARCHAR2(30),                       /*�˿��ֻ���         */--20120619 add by shizhan
   PUBTA030             INTEGER,                            /*ʡ��               */--20120619 add by shizhan
   PUBTA031             INTEGER,                            /*����               */--20120619 add by shizhan   
   PUBTA032             VARCHAR2(255),                      /*��������           */--20120619 add by shizhan
   PUBTA033             INTEGER,                            /*�Ӵ�����ID         */--20120912 add by xiechun
   PUBTA034             VARCHAR2(1),                        /*��ͥ���          */
   PUBTA035             VARCHAR2(1),                        /*��ͥ����          */
   PUBTA036             DATE,                               /*�µ�ʱ��          */ --20121010 add by shizhan 
   PUBTA037             NUMBBER(28,2),                      /*�µ����          */ --20121010 add by shizhan
   PUBTA038             INTEGER,                            /*���۵���          */ --20121010 add by shizhan
   PUBTA039             INTEGER,                            /*Ǳ�͵ȼ�          */ 
   PUBTA040             VARCHAR2(1),                        /*��Դ               */   
   PUBTA041             VARCHAR2(1),                        /*�Ƿ�תΪ��Ա       */  
   PUBTA042             VARCHAR2(1),                        /*��ͨ����           */ 
   PUBTA043             DATE ,                              /*����*/
   CREATE_USER          VARCHAR2(12),                       /*������Ա           */
   USER_GROUP           VARCHAR2(12),                       /*������Ա����       */                        
   CREATE_DATE          DATE,                               /*��������           */
   MODIFIER             VARCHAR2(12),                       /*�޸���Ա           */
   MODI_DATE            DATE,                               /*�޸�����           */
   FLAG                 NUMBER(1) ,                         /*����״̬           */
   constraint PK_TB_PUBTA primary key (PUBTA_ID)
);
create unique index AK_TB_PUBTA on TB_PUBTA (PUBTA002);
create sequence SEQ_TB_PUBTA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTA to public;
grant index  on TB_PUBTA to public;
grant update on TB_PUBTA to public; 
grant delete on TB_PUBTA to public;  
grant insert on TB_PUBTA to public; 
grant select on SEQ_TB_PUBTA to public;  